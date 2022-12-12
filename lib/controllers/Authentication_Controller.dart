// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../Routes/routes.dart';
import '../models/user_model.dart';

class Authentication_Controller extends GetxController {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();

  RxBool isloading = false.obs;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void SignUp() async {
    final docRef = FirebaseFirestore.instance.collection('users');
    isloading(true);
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: email_controller.text, password: password_controller.text)
          .then((user) async {
        final users = User_Model(
            username: username_controller.text.trim(),
            email: email_controller.text.trim(),
            phone_number: phone_controller.text.trim(),
            password: password_controller.text.trim());
        await docRef.doc(user.user!.uid).set(users.toMap());
        update();

        Get.offAllNamed(Routes.HomeScreen);
      });
    } on FirebaseAuthException catch (e) {
      String message = e.toString();

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that username.';
      }
      Get.defaultDialog(
        title: 'Error Occurred',
        titleStyle: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        middleText: message,
        middleTextStyle: const TextStyle(fontSize: 18),
        backgroundColor: Colors.grey.shade400,
      );
    } finally {
      isloading(false);
    }
  }

  void SignIn() async {
    isloading(true);
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email_controller.text, password: password_controller.text);

      Get.offAllNamed(Routes.HomeScreen);
    } on FirebaseAuthException catch (e) {
      String message = '$e';

      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      Get.defaultDialog(
        title: 'Error Occurred',
        titleStyle: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        middleText: message,
        middleTextStyle: const TextStyle(fontSize: 18),
        backgroundColor: Colors.grey.shade400,
      );
      isloading(false);
      update();
    }
  }

  void Logout() async {
    await _firebaseAuth.signOut();
  }
}
