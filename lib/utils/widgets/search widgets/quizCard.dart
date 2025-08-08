import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quizcard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const Quizcard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
      child: Container(
        height: 90.h,
        padding: EdgeInsets.all(2.r),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(
            color: Color(0xff000000).withOpacity(0.1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10.w,
              top: 8.h,
              child: Image.asset(
                image,
                height: 70.h,
                width: 70.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 20.h,
              left: 98.w,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontWeight: FontWeight.w900,
                  fontSize: 18.5.sp,
                ),
              ),
            ),
            Positioned(
              top: 50.h,
              left: 100.w,
              child: Text(
                subtitle,
                style: TextStyle(
                  fontFamily: 'RubikReg',
                  color: Color(0xff000000).withOpacity(0.4),
                  fontWeight: FontWeight.w100,
                  fontSize: 14.sp,
                ),
              ),
            ),
            Positioned(
              top: 28.h,
              right: 15.w,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff6A5AE0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
