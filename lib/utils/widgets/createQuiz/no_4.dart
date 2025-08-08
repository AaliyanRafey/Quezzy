import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget no4() {
  return Container(
    height: 100.h,
    width: 370.w,
    decoration: BoxDecoration(
      color: Color(0xffFFB380),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.all(18.0.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/4.png',
            fit: BoxFit.cover,
            height: 65.h,
            width: 65.w,
          ),
          SizedBox(width: 20.w),
          Text(
            'You are doing better than\n60% of other players!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'RubikReg',
              color: Color(0xffFFFFFF),
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    ),
  );
}
