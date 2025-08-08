import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz4.dart';

class Quiz3 extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Quiz3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              SizedBox(height: 25),
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36.h,
                width: 377.w,
              ),
              SizedBox(height: 20.h),
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
                        nextScreen: Quiz4(),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.all(15.0.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUESTION 5 OF 10',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'RubikReg',
                                color: Color(0xff858494),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Who are three players share the record for most Premier League red cards (8)?',
                              style: TextStyle(
                                fontSize: 21.sp,
                                fontFamily: 'RubikMed',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RoutesName.quiz4);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6.w),
                            height: 232.h,
                            width: 371.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffEFEEFC),
                                width: 3.w,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22.r),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: TextFormField(
                                controller: controller,
                                decoration: InputDecoration(
                                  hintText: "Write your answer",
                                  hintStyle: TextStyle(
                                    color: Color(0xff858494),
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'RubikReg',
                                  ),

                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 18.w,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 140.h),
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {
                          Get.toNamed(RoutesName.quiz4);
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
