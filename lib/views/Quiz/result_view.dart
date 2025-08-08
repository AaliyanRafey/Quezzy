import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/review_answers.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(left: 135.0.w),
              child: Row(
                spacing: 72.w,
                children: [
                  Text(
                    'Good Job!',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(RoutesName.quiz8);
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
            SizedBox(height: 10.h),
            Image.asset(
              'assets/images/goodjob.png',
              fit: BoxFit.fitHeight,
              width: 370.w,
              height: 350.h,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(right: 220.0.w),
              child: Text(
                'ACCURATED ANSWERS',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'RubikReg',
                  color: Color(0xff858494),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Get.to(ReviewAnswers());
              },
              child: Image.asset(
                'assets/images/detail.png',
                fit: BoxFit.cover,
                width: 360.w,
                height: 220.h,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, top: 20.h),
              child: Row(
                children: [
                  SmallClickButton(
                    buttonColor: Color(0xff6a5ae0),
                    textColor: Colors.white,
                    text: 'Done',
                    onPressed: () {
                      Get.to(ReviewAnswers());
                    },
                    h: 64.h,
                    w: 280.w,
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 64.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25.r),
                      border: Border.all(color: Color(0xffefeefc), width: 3.w),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          color: Color(0xff6a5ae0),
                          size: 35.r,
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
    );
  }
}
