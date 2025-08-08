import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/question_row.dart';

class SubmitQuizView extends StatelessWidget {
  const SubmitQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            // Set height big enough to cover everything — adjust if needed
            height: 1400.h,
            child: Stack(
              children: [
                // === AppBar Row ===
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0.w,
                    vertical: 12.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.offAllNamed(RoutesName.quizScreen);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.r,
                        ),
                      ),
                      Text(
                        'Create Quiz',
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontSize: 26.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz_rounded,
                          color: Color(0xffFFFFFF),
                          size: 25.r,
                        ),
                      ),
                    ],
                  ),
                ),

                // === Main Image ===
                Positioned(
                  width: 360.w,
                  height: 293.h,
                  top: 90.h,
                  left: 52.w,
                  child: Image.asset(
                    'assets/images/cq.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),

                // === Card Section ===
                Positioned(
                  top: 382.h,
                  left: 18.5.w,
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/nc.png',
                          fit: BoxFit.fitWidth,
                          width: 375.w,
                          height: 200.h,
                        ),
                        Positioned(
                          top: 30.h,
                          left: 24.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 36.h,
                                width: 180.w,
                                decoration: BoxDecoration(
                                  color: Color(0xffEFEEFC),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.0.w,
                                    vertical: 5.h,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.devices,
                                        color: Color(0xff6A5AE0),
                                        size: 18.r,
                                      ),
                                      SizedBox(width: 7.w),
                                      Text(
                                        'TECH • 5 QUIZZES',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'RubikMed',
                                          color: Color(0xff6A5AE0),
                                          fontSize: 13.5.r,
                                          letterSpacing: 0.5.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 120.w),
                              SvgPicture.asset(
                                'assets/icons/googles.svg',

                                height: 35.h,
                                width: 35.w,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 85.h,
                          left: 24.w,
                          child: Text(
                            'Remote Work Tools Quiz',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 127.h,
                          left: 24.w,
                          child: Text(
                            'Take this basic remote work tools quiz to\ntest your tech knowledge.',
                            style: TextStyle(
                              fontFamily: 'RubikReg',
                              fontSize: 16.5.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858494),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 590.h,
                  left: 11.5.w,
                  child: SizedBox(
                    child: Stack(
                      children: [
                        ClipRect(
                          child: Image.asset(
                            'assets/images/basec.png',
                            fit: BoxFit.fitHeight,
                            width: 390.w,
                            height: 710.h,
                          ),
                        ),
                        Positioned(
                          top: 30.h,
                          left: 20.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // Row for question and question number
                                children: [
                                  Text(
                                    'Question',
                                    style: TextStyle(
                                      fontFamily: 'RubikMed',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Container(
                                    height: 22.h,
                                    width: 22.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6A5AE0),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                          fontFamily: 'RubikMed',
                                          color: Color(0xffFFFFFF),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 200.w),
                              SvgPicture.asset(
                                'assets/icons/googles.svg',

                                height: 35.h,
                                width: 35.w,
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          top: 85.h,
                          left: 13.w,
                          child: Container(
                            height: 550.h,
                            width: 365.w,
                            padding: EdgeInsets.all(16.r),
                            decoration: BoxDecoration(
                              color: Color(0xffEFEEFC),
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: List.generate(
                                  items.length,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(bottom: 20.0.h),
                                    child: QuestionRow(item: items[index]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 640.h,
                          left: 16.w,

                          child: ClickButton(
                            buttonColor: Color(0xff6A5AE0),
                            textColor: Color(0xffFFFFFF),
                            text: 'Save',
                            onPressed: () {
                              Get.toNamed(RoutesName.playQuiz);
                            },
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
      ),
    );
  }
}
