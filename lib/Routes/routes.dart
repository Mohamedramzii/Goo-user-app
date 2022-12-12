// ignore_for_file: constant_identifier_names

import 'package:get/route_manager.dart';

import '../views/Authentication/Login.dart';
import '../views/Authentication/SignUp.dart';
import '../views/home_screen.dart';


class AppRoutes {
  //App Routes
  static final routes = [
    GetPage(name: Routes.HomeScreen, page: () =>  Home_Screen()),
    GetPage(name: Routes.LoginScreen, page: () =>  Login_Screen()),
    GetPage(name: Routes.SignupScreen, page: () =>  Signup_Screen()),
  ];
}

class Routes {
  static const HomeScreen = '/HomeScreen';
  static const LoginScreen = '/LoginScreen';
  static const SignupScreen = '/SignupScreen';
}
