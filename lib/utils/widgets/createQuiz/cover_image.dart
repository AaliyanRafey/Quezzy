import 'package:flutter/material.dart';

Widget coverImage() {
  return Container(
    height: 240,
    width: double.infinity,
    margin: EdgeInsets.all(10),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: const Color(0xffEFEEFC),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/coverimage.png',
          fit: BoxFit.contain,
          height: 80,
          width: 80,
        ),
        SizedBox(height: 10),
        Text(
          'Add Cover Image',
          style: TextStyle(
            fontSize: 19,
            color: Color(0xff6A5AE0),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
