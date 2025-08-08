import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:queezy_app/res/routes/routes_name.dart';

Widget appBar() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.h),
    child: Row(
      spacing: 80.w,
      children: [
        IconButton(
          onPressed: () {
            Get.toNamed(RoutesName.mainScreen);
          },
          icon: Icon(Icons.arrow_back_rounded, size: 35.r, color: Colors.white),
        ),
        Text(
          'Discover',
          style: TextStyle(
            fontSize: 28.sp,
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
