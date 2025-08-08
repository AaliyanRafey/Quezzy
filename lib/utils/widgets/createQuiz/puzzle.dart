import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({super.key});

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  final List<TextEditingController> _controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemCount: _controllers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 8.h),
            child: Row(
              children: [
                Expanded(child: _buildTextField(_controllers[index])),
                SizedBox(width: 10.w),
                Icon(Icons.drag_handle_rounded, size: 35.r),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _buildTextField(TextEditingController controller) {
    return Container(
      height: 62.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffEFEEEC), width: 3.w),
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
      ),
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
    );
  }
}
