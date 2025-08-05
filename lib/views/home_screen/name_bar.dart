import 'package:flutter/material.dart';

Widget nameBar() {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Row(
                spacing: 8,
                children: [
                  Icon(Icons.wb_sunny_outlined, color: Color(0xffFFD6DD)),

                  Text(
                    'GOOD MORNING',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'RubikMed',
                      fontSize: 13.5,
                      color: Color(0xffFFD6DD),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                'Madelyn Dias',
                style: TextStyle(
                  fontSize: 25.5,
                  fontFamily: 'RubikReg',
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/images/a1.png',
          height: 60,
          width: 60,
          fit: BoxFit.fitWidth,
        ),
      ],
    ),
  );
}
