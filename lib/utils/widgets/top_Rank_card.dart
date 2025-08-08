import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget topRankCard() {
  return Stack(
    clipBehavior: Clip.none, // 👈 allows overflow
    children: [
      // Blue container (main card)
      Container(
        margin: EdgeInsets.symmetric(horizontal: 3.w),
        height: 105.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color(0xff6A5AE0),
        ),
        child: Stack(
          children: [
            // Rank number circle
            Positioned(
              top: 36.h,
              left: 17.w,
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffefeefc).withOpacity(0.3),
                    width: 2.w,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Avatar
            Positioned(
              top: 14.h,
              left: 65.w,
              child: Image.asset(
                'assets/images/a4.png',
                fit: BoxFit.contain,
                height: 65.h,
                width: 65.w,
              ),
            ),
            // Flag
            Positioned(
              top: 65.h,
              left: 110.w,
              child: Image.asset(
                'assets/images/cz.png',
                fit: BoxFit.contain,
                height: 20.h,
                width: 20.w,
              ),
            ),
            // Top wave
            Positioned(
              top: -20.h,
              left: 135.w,
              child: Image.asset(
                'assets/images/toprankwave.png',
                fit: BoxFit.fitHeight,
                height: 129.h,
                width: 375.5.w,
              ),
            ),
            // Name
            Positioned(
              top: 22.h,
              left: 148.w,
              child: Text(
                'Brandon Matrovs',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RubikMed',
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            // Points
            Positioned(
              top: 55.h,
              left: 149.w,
              child: Text(
                '124 points',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RubikReg',
                  fontSize: 15.5.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),

      // Gold medal on top (half out)
      Positioned(
        top: -18.h,
        right: 30.w,
        child: Image.asset(
          'assets/images/goldmedal.png',
          fit: BoxFit.cover,
          height: 45.h,
          width: 45.w,
        ),
      ),
    ],
  );
}
