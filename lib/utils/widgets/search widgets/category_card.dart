import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final Color logoback;
  final String text;
  final String quiz;

  const CategoryCard({
    super.key,
    required this.bgColor,
    required this.logoback,
    required this.text,

    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 180.h,
      width: 180.w,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 12.w),
        child: Column(
          children: [
            Container(
              height: 70.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: logoback,
              ),
              child: Center(
                // child: Image.asset(),
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'RubikMed',
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              quiz,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RubikMed',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
