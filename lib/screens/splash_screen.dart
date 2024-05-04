import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/onBoardingScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to home screen
    Timer(Duration(seconds: 3), () {
      Get.to();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/konozLogo.png',
                height: 40.h,
              ),
            ],
          ),
          Positioned(
            bottom: 0.h,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/splash.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
