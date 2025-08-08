import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/views/Quiz/qui1a.dart';

class Options extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight weight;
  final IconData? icon; // Optional icon
  final Color? borderColor;
  final Color? textColor;

  const Options({
    super.key,
    required this.text,
    required this.color,
    required this.weight,
    this.icon,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(AnswerExplained());
      },
      child: Container(
        height: 64.h,
        width: 360.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: borderColor ?? Color(0xffEFEEFC),
            width: 3.w,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: weight,
                    fontSize: 18.sp,
                    color: textColor ?? Colors.black,
                  ),
                ),
              ),
              if (icon != null) Icon(icon, color: borderColor ?? Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
