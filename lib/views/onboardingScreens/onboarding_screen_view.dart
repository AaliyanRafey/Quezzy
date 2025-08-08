import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class OnboardingScreenView3 extends StatefulWidget {
  const OnboardingScreenView3({super.key});

  @override
  State<OnboardingScreenView3> createState() => _OnboardingScreenView3State();
}

class _OnboardingScreenView3State extends State<OnboardingScreenView3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            height: 241.65625.h,
            width: 241.65625.w,
            top: -51.09.h,
            left: 247.91.w,
            child: Image.asset('assets/images/oval3b.png'),
          ),

          Positioned(
            height: 418.h,
            width: 418.w,
            top: -86.h,
            left: 103.w,
            child: Image.asset('assets/images/oval3a.png'),
          ),
          Positioned(
            height: 48.h,
            width: 48.w,
            top: 136.h,
            left: 82.w,
            child: Image.asset('assets/images/oval1.png'),
          ),
          // Positioned(
          //   height: 12.638166427612305,
          //   width: 12.733139038085938,
          //   top: 317.7,
          //   left: 190,
          //   child: Image.asset('assets/images/oval2.png'),
          // ),
          Positioned(
            height: 20.h,
            width: 20.w,
            top: 460.h,
            left: 323.w,
            child: Image.asset('assets/images/oval2.png'),
          ),
          Positioned(
            height: 418.h,
            width: 418.w,
            top: 432.h,
            left: -95.w,
            child: Image.asset('assets/images/oval4.png'),
          ),
          Positioned(
            height: 241.65625.h,
            width: 241.65625.w,
            top: 526.91.h,
            left: -50.09.w,
            child: Image.asset('assets/images/oval4a.png'),
          ),
          Positioned(
            top: 206.h,
            left: 55.w,
            child: Image.asset(
              'assets/images/onboard.png',
              height: 264.h,
              width: 317.420654296875.w,
            ),
          ),
          Positioned(
            top: 602.h,
            left: 180.w,
            child: Row(
              spacing: 15.w,
              children: [
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
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffFFFFFF), width: 3.w),
                  ),
                  child: Align(
                    alignment: Alignment.center, // You can change this!
                    child: Container(
                      height: 9.h, // As per your requirement
                      width: 9.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 645.h,
            left: 15.w,
            child: Container(
              height: 244.h,
              width: 383.w,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Take part in challenges\n           with friends',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 25.h),

                  ClickButton(
                    buttonColor: Color(0xff6A5AE0),
                    textColor: Color(0xffFFFFFF),
                    text: 'Sign Up',
                    onPressed: () {
                      Get.toNamed(RoutesName.loginorsignup);
                    },
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
