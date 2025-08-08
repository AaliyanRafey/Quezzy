import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkboxs extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Checkboxs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildAnswerBox(),
        SizedBox(height: 10.h),
        _buildAnswerBox(),
      ],
    );
  }

  Widget _buildAnswerBox() {
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              Container(
                width: 30.w,
                height: 25.h,
                decoration: BoxDecoration(
                  color: Color(0xffEFEEFC),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xff6A5AE0), width: 2.5.w),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Add answer",
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
            ],
          ),
        ),
      ),
    );
  }
}
