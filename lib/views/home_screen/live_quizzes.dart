import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget liveQuizzes() {
  final List<Map<String, String>> quizList = [
    {
      'title': 'Statistics Math Quiz',
      'subtitle': 'Math • 12 Quizzes',
      'image': 'assets/images/mathq.png',
    },
    {
      'title': 'Integer Quiz',
      'subtitle': 'Math • 12 Quizzes',
      'image': 'assets/images/intq.png',
    },
  ];
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35.r),
        topRight: Radius.circular(35.r),
      ),
    ),
    padding: EdgeInsets.only(
      top: 2.h,
      // left: 5,
      // right: 5,
      bottom: 60.h, // Match nav bar height
    ),
    child: Column(
      children: List.generate(quizList.length, (index) {
        final quiz = quizList[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Container(
            padding: EdgeInsets.all(2.r),
            height: 90.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              border: Border.all(
                color: Color(0xff000000).withOpacity(0.1),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10.w,
                  top: 8.h,
                  child: Center(
                    child: Image.asset(
                      quiz['image']!,
                      height: 70.h,
                      width: 70.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15.h,
                  left: 98.w,
                  child: Text(
                    quiz['title']!,
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 48.5.h,
                  left: 100.w,
                  child: Text(
                    quiz['subtitle']!,
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      color: Color(0xff000000).withOpacity(0.3),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 28.h,
                  right: 15.w,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff6A5AE0),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}
