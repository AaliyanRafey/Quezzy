import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/quizstat.dart';

Widget quizWon() {
  return Container(
    width: 360.w,
    height: 530.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      color: Color(0xffE8E5FA),
    ),
    child: Stack(
      children: [
        Positioned(
          top: -70.h,
          left: 2.w,

          child: Image.asset(
            'assets/images/l.png',
            fit: BoxFit.fitWidth,
            height: 250.h,
            width: 250.w,
          ),
        ),
        // monthly dropdown
        Positioned(
          top: 20.h,
          right: 20.w,
          child: Container(
            height: 42.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffefeefc), width: 2.5.w),
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Row(
                  children: [
                    Text(
                      'Monthly',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xff6A5AE0),
                      size: 20.r,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // text
        Positioned(
          top: 120.h,
          left: 38.w,

          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'You have played a total ',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Colors.black, // important
                  ),
                ),
                TextSpan(
                  text: '\n24 quizzes ',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Color(0xff6a5ae0), // purple
                  ),
                ),
                TextSpan(
                  text: 'this month!',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        //circle
        Positioned(
          top: 210.h,
          left: 95.w,
          child: Image.asset(
            'assets/images/o.png',
            fit: BoxFit.fitHeight,
            height: 170.h,
            width: 170.w,
          ),
        ),
        //positioned container
        Positioned(
          top: 400.h,
          left: 10.w,
          child: Padding(
            padding: EdgeInsets.only(left: 6.0.w),
            child: Row(
              spacing: 20,
              children: [
                QuizStat(
                  no: '5',
                  text: 'Quiz Created',
                  image: 'assets/images/pen.png',
                  boxColor: Color(0xffFFFFFF),
                  textColor: Color(0xff000000),
                ),
                QuizStat(
                  no: '21',
                  text: 'Quiz Won',
                  image: 'assets/images/star.png',
                  boxColor: Color(0xff6A5AE0),
                  textColor: Color(0xffFFFFFF),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
