import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/options.dart';

class AnswerExplained extends StatelessWidget {
  const AnswerExplained({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Row(
                  spacing: 32,
                  children: [
                    Text(
                      'Answer Explained',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.quiz1);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xffFFFFFF),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Container(
                height: 759,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'QUESTION 3 OF 10',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Which player scored the fastest hat-trick in the Premier League?',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'SELECTED ANSWER',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Robin van Persie',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w600,
                        icon: Icons.close,
                        borderColor: Color(0xffFF6666),
                        textColor: Color(0xffFF6666),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'SELECTED ANSWER',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Sadio Mane',
                        color: Color(0xff53DF83),
                        weight: FontWeight.w600,
                        icon: Icons.check,
                        borderColor: Color(0xffFFFFFF),
                        textColor: Color(0xffFFFFFF),
                      ),
                      SizedBox(height: 25),

                      Text(
                        'EXPLAINATION',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Southampton's Sadio Mané has scored the fastest hat-trick in Premier League history in just two minutes and 56 seconds against Aston Villa on Saturday.",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 160),
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {
                          Get.toNamed(RoutesName.quiz2);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
