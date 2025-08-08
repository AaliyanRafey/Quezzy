import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class LoginorSignupView extends StatefulWidget {
  const LoginorSignupView({super.key});

  @override
  State<LoginorSignupView> createState() => _LoginorSignupViewState();
}

class _LoginorSignupViewState extends State<LoginorSignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            height: 106.h,
            width: 96.w,
            top: 80.h,
            left: 160.w,
            child: Image.asset('assets/images/logo.png'),
          ),
          Positioned(
            height: 323.h,
            width: 323.w,
            top: 166.h,
            left: 42.w,
            child: Image.asset(
              'assets/images/illus.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            height: 20.h,
            width: 20.w,
            top: 145.h,
            left: 346.w,
            child: Image.asset('assets/images/oval2.png'),
          ),
          Positioned(
            height: 49.h,
            width: 49.w,
            top: 100.h,
            left: 34.w,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 418.h,
            width: 418.w,
            top: 233.h,
            left: -115.w,
            child: Image.asset('assets/images/oval4.png'),
          ),
          Positioned(
            height: 14.h,
            width: 14.w,
            top: 330.h,
            left: 155.w,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 129.h,
            width: 129.w,
            top: 263.h,
            left: 322.w,
            child: Image.asset('assets/images/oval3.png'),
          ),
          Positioned(
            height: 240.h,
            width: 240.w,
            top: 302.h,
            left: -76.w,
            child: Image.asset('assets/images/oval4a.png'),
          ),
          Positioned(
            top: 506.h,
            left: 15.w,
            child: Container(
              height: 373.h,
              width: 383.w,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(18.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login or Sign Up',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Login or create an account to take quiz,\n     take part in challenge, and more.',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 19.sp,

                        fontWeight: FontWeight.w300,
                        color: Color(0xff858494),
                      ),
                    ),

                    SizedBox(height: 26.h),
                    ClickButton(
                      buttonColor: Color(0xff6A5AE0),
                      textColor: Color(0xffFFFFFF),
                      text: 'Login',
                      onPressed: () {
                        Get.toNamed(RoutesName.loginView);
                      },
                    ),
                    SizedBox(height: 16.h),
                    ClickButton(
                      buttonColor: Color(0xffE6E6E6),
                      textColor: Color(0xff6A5AE0),
                      text: 'Create an account',
                      onPressed: () {
                        Get.toNamed(RoutesName.signUp);
                      },
                    ),
                    SizedBox(height: 16.h),
                    ClickButton(
                      buttonColor: Color(0xffFFFFFF),
                      textColor: Color(0xff858494),
                      text: 'Later',
                      onPressed: () {
                        Get.toNamed(RoutesName.mainOnboardingScreens);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
