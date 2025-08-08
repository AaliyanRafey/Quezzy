import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/views/Profile/intro_quiz_view.dart';

class FAQCard extends StatelessWidget {
  const FAQCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Let parent scroll
      padding: EdgeInsets.all(16.r),
      children: [
        // Section 1 Title
        Text(
          'INTRO',
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xff858494),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),

        // Section 1 Items
        _faqItem('Intro to Queezy apps'),
        SizedBox(height: 10.h),
        _faqItem('How to login or sign up'),

        SizedBox(height: 30.h),

        // Section 2 Title
        Text(
          'CREATE AND TAKE QUIZ',
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xff858494),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),

        // Section 2 Items
        _faqItem('How to create quiz in the app'),
        SizedBox(height: 5.h),
        _faqItem('How to take quiz in the app'),
        SizedBox(height: 5.h),
        _faqItem('How do I play quiz with other players?'),

        SizedBox(height: 5.h),
        _faqItem('Can I invite my friends to play quiz together?'),
      ],
    );
  }

  Widget _faqItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: TextButton(
        onPressed: () {
          Get.to(IntroQuizView());
        },
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'RubikMed',
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
