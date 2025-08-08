import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget coverImage() {
  return Container(
    height: 240.h,
    width: double.infinity,
    margin: EdgeInsets.all(10.r),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.r),
      color: const Color(0xffEFEEFC),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/coverimage.png',
          fit: BoxFit.contain,
          height: 80.h,
          width: 80.w,
        ),
        SizedBox(height: 10.h),
        Text(
          'Add Cover Image',
          style: TextStyle(
            fontSize: 19.sp,
            color: Color(0xff6A5AE0),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
