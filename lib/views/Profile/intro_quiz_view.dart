import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IntroQuizView extends StatelessWidget {
  const IntroQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeefc),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back, size: 30.r),
                  ),
                  SizedBox(width: 50.w),
                  Text(
                    'Help and Support',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/i.png',
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: 780.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
