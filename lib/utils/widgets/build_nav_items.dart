import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/main_screen_controller.dart';

Widget buildNavItems(String svgPath, int index) {
  final controller = Get.find<MainScreenController>();

  return Obx(() {
    bool isSelected = controller.selectedIndex.value == index;

    return Flexible(
      child: GestureDetector(
        onTap: () => controller.changeTab(index),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Container(
            child: SvgPicture.asset(
              svgPath,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.cover,
              color: isSelected ? Colors.black : const Color(0xffB3A9F7),
            ),
          ),
        ),
      ),
    );
  });
}
 // 