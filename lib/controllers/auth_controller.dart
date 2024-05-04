import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  bool passwordVisible = false;
  bool isLogin = true;
  bool rememberMe = true;

  final isGoogleLoading = false.obs;

  void toggleAuthMode() async {
    isLogin = !isLogin;
    update();
  }

  void togglePasswordVisibility() {
    passwordVisible = !passwordVisible;
    update();
  }

  void toggleRememberMe() {
    rememberMe = !rememberMe;
    update();
  }
}
