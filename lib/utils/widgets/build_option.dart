// // widgets/build_option.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/option_selection_controller.dart';

class BuildOption extends StatelessWidget {
  final String title;
  final int index;

  BuildOption({super.key, required this.title, required this.index});

  final OptionSelectionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.selectedIndex.value == index;

      return GestureDetector(
        onTap: () => controller.selectTab(index),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'RubikMed',
                color: isSelected ? Color(0xff6a5ae0) : Color(0xff858494),
                fontWeight: FontWeight.w900,
                fontSize: 18.5.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 8.5.h,
              width: 8.5.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Color(0xff6a5ae0) : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    });
  }
}
