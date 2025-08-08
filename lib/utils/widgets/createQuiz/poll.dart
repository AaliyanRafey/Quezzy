import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Poll extends StatelessWidget {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  Poll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildAnswerBox("Add choice answer 1", controller1),
        SizedBox(height: 10.h),
        _buildAnswerBox("Add choice answer 2", controller2),
      ],
    );
  }

  Widget _buildAnswerBox(String hint, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        height: 62.h,
        width: 358.w,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffEFEEEC), width: 3.w),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: const Color(0xff858494),
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
