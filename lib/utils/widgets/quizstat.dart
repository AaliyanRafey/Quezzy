import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizStat extends StatelessWidget {
  final String no, text, image;
  final Color boxColor, textColor;
  const QuizStat({
    super.key,
    required this.no,
    required this.text,
    required this.image,
    required this.boxColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 155.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: boxColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10.h,
            right: 10.w,

            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 30.h,
              width: 30.w,
            ),
          ),
          Positioned(
            top: 18.h,
            left: 20.w,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$no\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'RubikMed',
                      color: textColor,
                      fontSize: 38.sp,
                    ),
                  ),
                  TextSpan(
                    text: text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'RubikReg',
                      color: textColor,
                      fontSize: 14.5.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
