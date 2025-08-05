import 'package:flutter/material.dart';

Widget liveQuizzes() {
  final List<Map<String, String>> quizList = [
    {
      'title': 'Statistics Math Quiz',
      'subtitle': 'Math • 12 Quizzes',
      'image': 'assets/images/mathq.png',
    },
    {
      'title': 'Integer Quiz',
      'subtitle': 'Math • 12 Quizzes',
      'image': 'assets/images/intq.png',
    },
  ];
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    padding: const EdgeInsets.only(
      top: 2,
      // left: 5,
      // right: 5,
      bottom: 60, // Match nav bar height
    ),
    child: Column(
      children: List.generate(quizList.length, (index) {
        final quiz = quizList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            padding: EdgeInsets.all(2),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              border: Border.all(
                color: Color(0xff000000).withOpacity(0.1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 8,
                  child: Center(
                    child: Image.asset(
                      quiz['image']!,
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 98,
                  child: Text(
                    quiz['title']!,
                    style: TextStyle(
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  top: 48,
                  left: 100,
                  child: Text(
                    quiz['subtitle']!,
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      color: Color(0xff000000).withOpacity(0.4),
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 28,
                  right: 15,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff6A5AE0),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}
