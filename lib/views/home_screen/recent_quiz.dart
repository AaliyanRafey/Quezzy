import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget recentQuiz() {
  return GestureDetector(
    child: Padding(
      padding: EdgeInsets.only(left: 6.0.w),
      child: Container(
        height: 96.h,
        width: 370.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.r),
          color: Color(0xffffccd5),
        ),
        child: Stack(
          children: [
            Positioned(
              width: 283.w,
              height: 89.h,
              top: 1.h,
              left: 6.5.w,
              child: Image.asset(
                'assets/images/wave1.png',
                filterQuality: FilterQuality.high,
                color: Color(0xffffffff),
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              width: 343.w,
              height: 99.h,
              top: 1.h,
              left: 12.w,
              child: Image.asset(
                'assets/images/wave2.png',
                filterQuality: FilterQuality.high,
                color: Color(0xffffffff),
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.h),
                      Text(
                        'RECENT QUIZ',
                        style: TextStyle(
                          fontFamily: 'RubikMed',
                          fontSize: 16.5.sp,
                          color: Color(0xff660012).withOpacity(0.35),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Icon(
                            Icons.headphones_rounded,
                            color: Color(0xff660012),
                            size: 23.r,
                          ),
                          SizedBox(width: 1),
                          Text(
                            ' A Basic Music Quiz',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontSize: 21.sp,
                              color: Color(0xff660012),
                              fontWeight: FontWeight.w900,
                              wordSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/65.png',
                    fit: BoxFit.contain,
                    height: 60.h,
                    width: 60.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
