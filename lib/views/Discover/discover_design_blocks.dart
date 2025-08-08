import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DesignBlocks() {
  return Padding(
    padding: EdgeInsets.only(left: 5.0.w),
    child: GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),

        child: Container(
          height: 193.h,
          width: 377.w,
          decoration: BoxDecoration(color: Color(0xffFFE0E6)),
          child: Stack(
            children: [
              Positioned(
                top: 20.h,
                left: 20.w,

                child: Container(
                  height: 36.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: Color(0xffFF8FA2),
                  ),
                  child: Center(
                    child: Text(
                      'TOP PICKS',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'RubikMed',
                        color: Colors.white,
                        fontSize: 13.5.sp,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 125.h,
                left: 20.w,
                child: Text(
                  'Travel Trivia Quiz',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontSize: 24.sp,
                    color: Color(0xff660012),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                top: 159.h,
                left: 20.w,
                child: Row(
                  spacing: 6.w,
                  children: [
                    Image.asset(
                      'assets/images/mic.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                    Text(
                      'Music • 5 Quizzes',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 13.r,
                        color: Color(0xff660012),
                        fontWeight: FontWeight.w600,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 24.h,
                left: 115.w,

                child: Image.asset(
                  'assets/images/toppickimgae.png',
                  fit: BoxFit.fitWidth,
                  width: 262.84088134765625.w,
                  height: 169.h,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
