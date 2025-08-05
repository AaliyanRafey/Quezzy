import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/views/onboardingScreens/main_onboardingscreens.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Get.offAll(() => MainOnboardingscreens());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            height: 418,
            width: 418,
            top: -36,
            left: 111,
            child: Image.asset('assets/images/g8.png'),
          ),
          Positioned(
            height: 418,
            width: 418,
            top: 488,
            left: -141,
            child: Image.asset('assets/images/g7.png'),
          ),
          Center(child: Image.asset('assets/images/logo.png')),
          Positioned(
            height: 48,
            width: 48,
            top: 218,
            left: 56,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 20,
            width: 20,
            top: 592,
            left: 277,
            child: Image.asset('assets/images/oval2.png'),
          ),
        ],
      ),
    );
  }
}
