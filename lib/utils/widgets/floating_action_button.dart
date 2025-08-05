import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';

Widget buildFloatingButton() {
  return SizedBox(
    height: 60,
    width: 60,
    child: FloatingActionButton(
      onPressed: () {
        Get.offAllNamed(RoutesName.createQuizOne);
      },

      backgroundColor: Color(0xff6A5AE0),

      shape: CircleBorder(),
      elevation: 0,
      child: const Icon(Icons.add, size: 30, color: Color(0xffFFFFFF)),
    ),
  );
}
