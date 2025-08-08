import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget nameBar() {
  return Padding(
    padding: EdgeInsets.all(8.0.r),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 40.0.w),
              child: Row(
                spacing: 5.w,
                children: [
                  Icon(
                    Icons.wb_sunny_outlined,
                    color: Color(0xffFFD6DD),
                    size: 20.r,
                  ),

                  Text(
                    'GOOD MORNING',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'RubikMed',
                      fontSize: 13.5.sp,
                      color: Color(0xffFFD6DD),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: Text(
                'Madelyn Dias',
                style: TextStyle(
                  fontSize: 27.sp,
                  fontFamily: 'RubikMed',
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/images/a1.png',
          height: 60.h,
          width: 60.w,
          fit: BoxFit.fitWidth,
        ),
      ],
    ),
  );
}
