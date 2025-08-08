import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBlock extends StatelessWidget {
  final Color bgColor;
  final String image;
  final String text;
  final String quiz;

  const CategoryBlock({
    super.key,
    required this.bgColor,
    required this.image,
    required this.text,

    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173.h,
      width: 178.w,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 60.h,
              width: 60.w,
            ),
            SizedBox(height: 12.h),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'RubikReg',
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              quiz,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RubikReg',
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
