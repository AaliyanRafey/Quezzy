import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoiceNote extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  VoiceNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        height: 62.h,
        width: 358.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEFEEEC), width: 3.w),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Add voice answer",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.mic_none_outlined, size: 30.r),
            ),
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
    );
  }
}
