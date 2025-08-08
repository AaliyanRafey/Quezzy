import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class AnswerExplained2 extends StatelessWidget {
  const AnswerExplained2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            children: [
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.only(left: 75.w),
                child: Row(
                  spacing: 38.w,
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
                        'QUESTION 6 OF 10',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'How to pronounce Wojciech Szczesny?',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset(
                        'assets/images/voiceans.png',
                        height: 92.h,
                        width: 377.w,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        'EXPLAINATION',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Pronunciation	English: / vɔɪtʃɛx/ VOY-chekh Polish: [ˈvɔjtɕɛx] ( listen).",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Gender:	male",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Word/name	origin: Polish",
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
                          Get.toNamed(RoutesName.quiz6);
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
