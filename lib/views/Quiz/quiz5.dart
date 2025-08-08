import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz5a.dart';

class Quiz5 extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Quiz5({super.key});

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
                width: 367.w,
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.to(AnswerExplained2());
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
                        SizedBox(height: 15.h),
                        SizedBox(height: 20.h),
                        PieCountdown(
                          seconds: 10,
                          size: 80.r,
                          nextScreen: AnswerExplained2(),
                        ),
                        SizedBox(height: 50.h),
                        Padding(
                          padding: EdgeInsets.all(15.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 6 OF 10',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "How to pronounce Wojciech Szczesny?",
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),

                        Image.asset(
                          'assets/images/voice.png',
                          fit: BoxFit.fitWidth,
                          height: 294.h,
                          width: 294.w,
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
