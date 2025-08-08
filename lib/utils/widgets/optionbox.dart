import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CheckBoxOption({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          height: 67.h,
          width: 398.w,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffEFEEEC), width: 3.w),
            color: isSelected ? Color(0xffEFEEFC) : Colors.white,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Row(
            children: [
              Container(
                width: 30.w,
                height: 25.h,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0XFF6A5AE0) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xff6A5AE0),
                    width: 2.5.w,
                  ),
                ),
                child: isSelected
                    ? Icon(Icons.check, size: 18.r, color: Color(0XFFffffff))
                    : null,
              ),
              SizedBox(width: 16.w),
              Text(
                text,
                style: TextStyle(
                  fontSize: 19.sp,
                  fontFamily: isSelected ? 'RubikMed' : 'RubikReg',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
