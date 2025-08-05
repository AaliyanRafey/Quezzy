import 'package:flutter/material.dart';

Widget no4() {
  return Container(
    height: 100,
    width: 370,
    decoration: BoxDecoration(
      color: Color(0xffFFB380),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/4.png',
            fit: BoxFit.cover,
            height: 65,
            width: 65,
          ),
          SizedBox(width: 20),
          Text(
            'You are doing better than\n60% of other players!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'RubikReg',
              color: Color(0xffFFFFFF),
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
