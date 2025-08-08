import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/main_screen.dart';
import 'package:queezy_app/utils/widgets/question_list.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/quiz1.dart';
import 'package:queezy_app/views/Quiz/result_view.dart';

class ReviewAnswers extends StatelessWidget {
  const ReviewAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 140.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34.r),
            topRight: Radius.circular(34.r),
          ),

          border: Border(
            top: BorderSide(color: Color(0xffEFEEFC), width: 8.w),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallClickButton(
              buttonColor: Color(0xff6a5ae0),
              textColor: Color(0xffffffff),
              text: "Edit Answer",
              h: 75.h,
              w: 175.w,
              onPressed: () {
                Get.to(Quiz1());
              },
            ),
            SmallClickButton(
              buttonColor: Colors.white,
              textColor: Color(0xff6A5AE0),
              text: "Submit",
              h: 75.h,
              w: 175.w,
              onPressed: () {
                Get.to(MainScreen());
              },
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 85.w),
                child: Row(
                  spacing: 58.w,
                  children: [
                    Text(
                      'Review Answers',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(ResultView());
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xff000000),
                        size: 30.r,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Container(
                  height: 280.h,
                  width: 385.w,
                  margin: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    color: Color(0xff6a5ae0),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 28.h,
                        right: 20.w,
                        child: Image.asset('assets/images/ans.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h, left: 19.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUIZ NAME',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: 'RubikReg',
                                color: Color(0xffefeefc),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'English Premier League Quiz',
                              style: TextStyle(
                                fontSize: 19.sp,
                                color: Colors.white,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 32.h),
                            Padding(
                              padding: EdgeInsets.only(right: 2.w),
                              child: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height: 169.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF8FA2),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.r),
                                      topRight: Radius.circular(25.r),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 15.h,
                                        left: 15.w,
                                        child: Image.asset(
                                          'assets/images/c.png',
                                          fit: BoxFit.cover,
                                          height: 128.h,
                                          width: 128.w,
                                        ),
                                      ),
                                      Positioned(
                                        top: 40.h,
                                        left: 150.w,
                                        child: Text(
                                          'You answered 8\nout of 10\nquestions',
                                          style: TextStyle(
                                            fontFamily: 'RubikReg',
                                            color: Color(0xfffFFFFF),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 95.h,
                                        right: 2.w,
                                        child: Image.asset(
                                          'assets/images/oval6.png',
                                          fit: BoxFit.fitWidth,
                                          height: 80.h,
                                          width: 80.w,
                                        ),
                                      ),
                                      Positioned(
                                        top: 115.h,
                                        left: 120.w,
                                        child: Image.asset(
                                          'assets/images/oval6a.png',
                                          fit: BoxFit.fitWidth,
                                          height: 80.h,
                                          width: 80.w,
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0.r),
                child: Text(
                  'Answers',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Container(
                  width: 375.w,
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: const Color(0xffEFEEFC),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: List.generate(
                      questionList.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: 38.h),
                        child: QuestionColumn(item: questionList[index]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
