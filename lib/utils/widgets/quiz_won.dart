import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/quizstat.dart';

Widget quizWon() {
  return Container(
    width: 360,
    height: 530,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xffE8E5FA),
    ),
    child: Stack(
      children: [
        Positioned(
          top: -70,
          left: 2,

          child: Image.asset(
            'assets/images/l.png',
            fit: BoxFit.fitWidth,
            height: 250,
            width: 250,
          ),
        ),
        // monthly dropdown
        Positioned(
          top: 20,
          right: 20,
          child: Container(
            height: 42,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffefeefc), width: 2.5),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Monthly',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xff6A5AE0),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // text
        Positioned(
          top: 120,
          left: 38,

          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'You have played a total ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Colors.black, // important
                  ),
                ),
                TextSpan(
                  text: '\n24 quizzes ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Color(0xff6a5ae0), // purple
                  ),
                ),
                TextSpan(
                  text: 'this month!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikMed',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        //circle
        Positioned(
          top: 210,
          left: 95,
          child: Image.asset(
            'assets/images/o.png',
            fit: BoxFit.fitHeight,
            height: 170,
            width: 170,
          ),
        ),
        //positioned container
        Positioned(
          top: 400,
          left: 10,
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Row(
              spacing: 20,
              children: [
                QuizStat(
                  no: '5',
                  text: 'Quiz Created',
                  image: 'assets/images/pen.png',
                  boxColor: Color(0xffFFFFFF),
                  textColor: Color(0xff000000),
                ),
                QuizStat(
                  no: '21',
                  text: 'Quiz Won',
                  image: 'assets/images/star.png',
                  boxColor: Color(0xff6A5AE0),
                  textColor: Color(0xffFFFFFF),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
