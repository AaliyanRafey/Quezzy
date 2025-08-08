import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/options.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/result_view.dart';

class Quiz8 extends StatelessWidget {
  const Quiz8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
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
                      SizedBox(height: 30.h),
                      PieCountdown(
                        seconds: 10,
                        size: 80.r,
                        nextScreen: ResultView(),
                      ),
                      // Image.asset(
                      //   'assets/images/3sec.png',
                      //   fit: BoxFit.cover,
                      //   height: 64,
                      //   width: 64,
                      // ),
                      SizedBox(height: 40.h),
                      Image.asset(
                        'assets/images/quiz8.png',
                        fit: BoxFit.fitWidth,
                        height: 250.h,
                        width: 390.w,
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUESTION 8 OF 10',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'RubikReg',
                                color: Color(0xff858494),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "What does UAV stand for drone?",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Options(
                              text: 'unmanned Aerial Vehical',
                              color: Colors.white,
                              weight: FontWeight.w700,
                            ),
                            SizedBox(height: 20.h),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Under',
                                      onPressed: () {},
                                      h: 70.h,
                                      w: 90.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'unmanned',
                                      onPressed: () {},
                                      h: 70.h,
                                      w: 150.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Air',
                                      onPressed: () {},
                                      h: 70.h,
                                      w: 80.w,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.h),

                                Row(
                                  children: [
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Aerial',
                                      onPressed: () {},
                                      h: 70.h,
                                      w: 90.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Vehical',
                                      onPressed: () {},
                                      h: 70.h,
                                      w: 150.w,
                                    ),
                                  ],
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
