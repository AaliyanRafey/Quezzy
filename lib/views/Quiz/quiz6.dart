import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/checkbox.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz7.dart';

class Quiz6 extends StatelessWidget {
  const Quiz6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36.h,
                width: 377.w,
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesName.quiz7);
                },
                child: Container(
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
                          nextScreen: Quiz7(),
                        ),
                        SizedBox(height: 50.h),
                        Padding(
                          padding: EdgeInsets.all(15.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 7 OF 10',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Which three players shared the Premier League Golden Boot in 2018-19?',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: 'RubikReg',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              CheckBoxScreen(),
                            ],
                          ),
                        ),
                      ],
                    ),
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
