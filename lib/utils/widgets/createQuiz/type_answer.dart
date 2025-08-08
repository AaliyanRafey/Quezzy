import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeAnswer extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  TypeAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        height: 102.h,
        width: 360.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEFEEFC), width: 3.w),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: " Add answer",
              hintStyle: TextStyle(
                color: Color(0xff858494),
                fontWeight: FontWeight.w500,
                fontFamily: 'RubikReg',
              ),

              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                vertical: 15.h,
                horizontal: 18.w,
              ),
            ),
            style: TextStyle(fontSize: 17.sp, fontFamily: 'Rubik'),
          ),
        ),
      ),
    );
  }
}
