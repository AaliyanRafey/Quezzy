import 'package:flutter/material.dart';

Widget DesignBlocks() {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),

        child: Container(
          height: 193,
          width: 377,
          decoration: BoxDecoration(color: Color(0xffFFE0E6)),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,

                child: Container(
                  height: 36,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFF8FA2),
                  ),
                  child: Center(
                    child: Text(
                      'TOP PICKS',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'RubikMed',
                        color: Colors.white,
                        fontSize: 13.5,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 124,
                left: 20,
                child: Text(
                  'Travel Trivia Quiz',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontSize: 18,
                    color: Color(0xff660012),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                top: 152,
                left: 16,
                child: Row(
                  spacing: 11,
                  children: [
                    Image.asset('assets/images/mic.png', height: 20, width: 20),
                    Text(
                      'Music • 5 Quizzes',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 13,
                        color: Color(0xff660012),
                        fontWeight: FontWeight.w600,
                        wordSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 24,
                left: 115,

                child: Image.asset(
                  'assets/images/toppickimgae.png',
                  fit: BoxFit.fitWidth,
                  width: 262.84088134765625,
                  height: 169,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
