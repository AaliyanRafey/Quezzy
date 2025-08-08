import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/options.dart';

class AnswerExplained extends StatelessWidget {
  const AnswerExplained({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 75.0.w),
                child: Row(
                  spacing: 38,
                  children: [
                    Text(
                      'Answer Explained',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 27.sp,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.quiz1);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xffFFFFFF),
                        size: 30.r,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              Container(
                height: 759.h,
                width: 390.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      Text(
                        'QUESTION 3 OF 10',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Which player scored the fastest hat-trick in the Premier League?',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        'SELECTED ANSWER',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Robin van Persie',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w600,
                        icon: Icons.close,
                        borderColor: Color(0xffFF6666),
                        textColor: Color(0xffFF6666),
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        'SELECTED ANSWER',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Sadio Mane',
                        color: Color(0xff53DF83),
                        weight: FontWeight.w600,
                        icon: Icons.check,
                        borderColor: Color(0xffFFFFFF),
                        textColor: Color(0xffFFFFFF),
                      ),
                      SizedBox(height: 25.h),

                      Text(
                        'EXPLAINATION',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "Southampton's Sadio Mané has scored the fastest hat-trick in Premier League history in just two minutes and 56 seconds against Aston Villa on Saturday.",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 160.h),
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {
                          Get.toNamed(RoutesName.quiz2);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
