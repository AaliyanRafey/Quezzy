import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            top: -90.h,
            left: 113.w,
            child: Image.asset(
              'assets/images/onb2.png',

              height: 418.h,
              width: 418.w,
            ),
          ),
          Positioned(
            height: 48.h,
            width: 48.w,
            top: 136.h,
            left: 82.w,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 428.h,
            width: 428.w,
            top: 370.h,
            left: -100.w,
            child: Image.asset('assets/images/onb1.png'),
          ),
          Positioned(
            height: 20.h,
            width: 20.w,
            top: 460.h,
            left: 323.w,
            child: Image.asset('assets/images/oval2.png'),
          ),

          Positioned(
            top: 196.h,
            left: 5.w,
            child: Image.asset(
              'assets/images/onboard1.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitHeight,
              height: 260.0077362060547.h,
              width: 361.8121337890625.w,
            ),
          ),
          Positioned(
            top: 582.h,
            left: 170.w,
            child: Row(
              spacing: 15.w,
              children: [
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffFFFFFF), width: 2.w),
                  ),
                  child: Align(
                    alignment: Alignment.center, // You can change this!
                    child: Container(
                      height: 8.h, // As per your requirement
                      width: 8.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 9.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Container(
                  height: 9.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 625.h,
            left: 15.w,
            child: Container(
              height: 264.h,
              width: 383.w,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Create gamified quizzes\n       becomes simple',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 35.h),

                  ClickButton(
                    buttonColor: Color(0xff6A5AE0),
                    textColor: Color(0xffFFFFFF),
                    text: 'Sign Up',
                    onPressed: () {
                      Get.toNamed(RoutesName.loginorsignup);
                    },
                  ),
                  SizedBox(height: 30.h),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 16.sp,
                        color: Color(0xff858494),
                      ),
                      children: [
                        TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 16.sp,
                            color: Color(0xff6A5AE0),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // 👇 Navigate to Login screen here
                              Get.toNamed(RoutesName.loginView);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
