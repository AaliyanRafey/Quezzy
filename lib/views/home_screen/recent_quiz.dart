import 'package:flutter/material.dart';

Widget recentQuiz() {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(left: 3.0),
      child: Container(
        height: 96,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xffffccd5),
        ),
        child: Stack(
          children: [
            Positioned(
              width: 283,
              height: 89,
              top: 1,
              left: 6.5,
              child: Image.asset(
                'assets/images/wave1.png',
                filterQuality: FilterQuality.high,
                color: Color(0xffffffff),
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              width: 343,
              height: 99,
              top: 1,
              left: 12,
              child: Image.asset(
                'assets/images/wave2.png',
                filterQuality: FilterQuality.high,
                color: Color(0xffffffff),
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7),
                      Text(
                        'RECENT QUIZ',
                        style: TextStyle(
                          fontFamily: 'RubikMed',
                          fontSize: 16.5,
                          color: Color(0xff660012).withOpacity(0.35),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(
                            Icons.headphones_rounded,
                            color: Color(0xff660012),
                            size: 23,
                          ),
                          SizedBox(width: 1),
                          Text(
                            ' A Basic Music Quiz',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontSize: 21,
                              color: Color(0xff660012),
                              fontWeight: FontWeight.w900,
                              wordSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/65.png',
                    fit: BoxFit.fitWidth,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
