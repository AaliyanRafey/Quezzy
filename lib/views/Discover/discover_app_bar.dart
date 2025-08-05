import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:queezy_app/res/routes/routes_name.dart';

Widget appBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      spacing: 80,
      children: [
        IconButton(
          onPressed: () {
            Get.toNamed(RoutesName.mainScreen);
          },
          icon: Icon(Icons.arrow_back_rounded, size: 35, color: Colors.white),
        ),
        Text(
          'Discover',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'RubikReg',
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
