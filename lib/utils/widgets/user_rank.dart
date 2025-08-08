import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRank extends StatelessWidget {
  final String no, name, points, image;

  const UserRank({
    super.key,
    required this.no,
    required this.name,
    required this.points,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 85.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: Color(0xffffffff),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 36.h,
            left: 17.w,
            child: Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE6E6E6), width: 2.w),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  no,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'RubikReg',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff858494),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 14.h,
            left: 55.w,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              height: 65.h,
              width: 65.w,
            ),
          ),

          Positioned(
            top: 22.h,
            left: 138.w,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'RubikMed',

                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            top: 51.h,
            left: 139.w,
            child: Text(
              points,
              style: TextStyle(
                color: Color(0xff858494),
                fontFamily: 'RubikReg',
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
