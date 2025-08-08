import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/points.dart';

Widget rank() {
  return Container(
    height: 110.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff6a5ae0),
      borderRadius: BorderRadius.circular(20.r),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Points(
            image: 'assets/images/point.png',
            text: 'Points',
            number: '590',
          ),

          Image.asset('assets/images/d.png', height: 70.h, width: 10.w),
          Points(
            image: 'assets/images/wr.png',
            text: 'World Rank',
            number: '#1,438',
          ),
          Image.asset('assets/images/d.png', height: 70.h, width: 10.w),
          Points(
            image: 'assets/images/lr.png',
            text: 'Local Rank',
            number: '#56',
          ),
        ],
      ),
    ),
  );
}
