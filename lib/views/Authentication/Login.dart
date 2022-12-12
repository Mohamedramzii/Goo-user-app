import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../Routes/routes.dart';
import '../../constants/constants.dart';
import '../../constants/form_validations.dart';
import '../../controllers/Authentication_Controller.dart';
import '../widgets/common_widgets/custom_textformfield_widget.dart';

class Login_Screen extends StatelessWidget {
  Login_Screen({super.key});
  final Authentication_Controller _auth_controller = Get.find();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            // color: Colors.red,
            height: 360.h,
            width: 360.w,
            child: Lottie.asset(
              'images/app_logo.json',
              repeat: false,
            ),
          ),
          Text('Welcome Again', style: HeaderTextTheme),
          SizedBox(
            height: 20.h,
          ),
          Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Custom_TextFormField_widget(
                      hintText: 'Email',
                      onsave: (value) {
                        _auth_controller.email_controller.text = value!;
                      },
                      onvalidate: (value) {
                        if (!RegExp(validationEmail).hasMatch(value!)) {
                          return 'please enter a valid email address';
                        }
                        return null;
                      },
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Custom_TextFormField_widget(
                      hintText: 'Password',
                      onsave: (value) {
                        _auth_controller.password_controller.text = value!;
                      },
                      onvalidate: (value) {
                        if (value!.length < 8) {
                          return 'password must be at least 8 characters';
                        }
                        return null;
                      },
                      textInputType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Obx(()=> _auth_controller.isloading.value
                          ? AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            child: Container(
                              width: 70.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: KprimaryColor),
                              child: const Center(
                                  child: CircularProgressIndicator(
                                color: Colors.white,
                              )),
                            ),
                          )
                          : MaterialButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  //login method
                                  print('Logged In');
                                  _auth_controller.SignIn();
                                }
                              },
                              minWidth: 320.w,
                              height: 50.h,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: KprimaryColor,
                              child: Text(
                                'Let\'s Goo',
                                style: GoogleFonts.aBeeZee(
                                    textStyle: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),),
                    
                    
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Do not have an account ?',
                          style: DefaultTextTheme,
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.SignupScreen);
                            },
                            child:
                                Text('Register Now!', style: DefaultTextTheme))
                      ],
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
