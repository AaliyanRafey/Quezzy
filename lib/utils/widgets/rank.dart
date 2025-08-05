import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/points.dart';

Widget rank() {
  return Container(
    height: 110,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff6a5ae0),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Row(
        children: [
          Points(
            image: 'assets/images/point.png',
            text: 'Points',
            number: '590',
          ),
          SizedBox(height: 10),
          Image.asset('assets/images/d.png', height: 70, width: 60),
          Points(
            image: 'assets/images/wr.png',
            text: 'World Rank',
            number: '#1,438',
          ),
          Image.asset('assets/images/d.png', height: 70, width: 60),
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
