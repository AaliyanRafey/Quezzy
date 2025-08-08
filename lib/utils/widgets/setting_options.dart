import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingOptions extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback? ontap;
  const SettingOptions({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 88.h,
          padding: EdgeInsets.all(2.r),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffEFEEFC),

            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16.w,
                top: 15.h,
                child: Image.asset(
                  image,
                  height: 55.h,
                  width: 55.w,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 19.h,
                left: 86.w,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w700,
                    fontSize: 19.sp,
                  ),
                ),
              ),
              Positioned(
                top: 48.h,
                left: 88.w,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'RubikReg',
                    color: Color(0xff000000).withOpacity(0.4),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.7.sp,
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
      ),
    );
  }
}
