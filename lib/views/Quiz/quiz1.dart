import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/options.dart';
import 'package:queezy_app/views/Quiz/qui1a.dart';

class Quiz1 extends StatelessWidget {
  const Quiz1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0.r),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36.h,
                width: 377.w,
              ),
              SizedBox(height: 20.h),
              Container(
                height: 755.h,
                width: 390.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.0.r),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      PieCountdown(
                        seconds: 10,
                        size: 80.r,
                        nextScreen: AnswerExplained(),
                      ),
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.all(15.0.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Robin van Persie',
                        color: Color(0xffEFEEFC),
                        weight: FontWeight.w700,
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Sadio Mane',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Harry Kane',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: 15.h),
                      Options(
                        text: 'Christian Benteke',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
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
