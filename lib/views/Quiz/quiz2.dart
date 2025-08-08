import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/quiz3.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/top2.png',
                fit: BoxFit.cover,
                height: 36.h,
                width: 377.w,
              ),
              SizedBox(height: 18.h),
              Container(
                height: 750.h,
                width: 390.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(9.0.r),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      PieCountdown(
                        seconds: 10,
                        size: 80.r,
                        nextScreen: Quiz3(),
                      ),
                      SizedBox(height: 40.h),
                      Image.asset(
                        'assets/images/quiz2.png',
                        fit: BoxFit.cover,
                        height: 290.h,
                        width: 290.w,
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUESTION 4 OF 10',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'RubikReg',
                                color: Color(0xff858494),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Theodorus of Samos is the person who invented keys?",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 25.h),
                            Row(
                              spacing: 10.w,
                              children: [
                                SmallClickButton(
                                  buttonColor: Color(0xffFF6666),
                                  textColor: Colors.white,
                                  text: 'False',
                                  onPressed: () {
                                    Get.toNamed(RoutesName.quiz3);
                                  },
                                  h: 70.h,
                                  w: 160.w,
                                ),
                                SmallClickButton(
                                  buttonColor: Color(0xff53DF83),
                                  textColor: Colors.white,
                                  text: 'True',
                                  onPressed: () {
                                    Get.toNamed(RoutesName.quiz3);
                                  },
                                  h: 70.h,
                                  w: 160.w,
                                ),
                              ],
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
        ),
      ),
    );
  }
}
