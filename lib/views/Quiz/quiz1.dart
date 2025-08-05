import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/options.dart';
import 'package:queezy_app/views/Quiz/qui1a.dart';

class Quiz1 extends StatelessWidget {
  const Quiz1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/top1.png',
                fit: BoxFit.cover,
                height: 36,
                width: 377,
              ),
              SizedBox(height: 20),
              Container(
                height: 755,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      PieCountdown(
                        seconds: 10,
                        size: 70,
                        nextScreen: AnswerExplained(),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Robin van Persie',
                        color: Color(0xffEFEEFC),
                        weight: FontWeight.w700,
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Sadio Mane',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Harry Kane',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: 15),
                      Options(
                        text: 'Christian Benteke',
                        color: Color(0xffFFFFFF),
                        weight: FontWeight.w400,
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
