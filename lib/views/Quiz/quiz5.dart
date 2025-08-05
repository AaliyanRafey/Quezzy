import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz5a.dart';

class Quiz5 extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Quiz5({super.key});

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
                width: 367,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.to(AnswerExplained2());
                },
                child: Container(
                  height: 750,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(height: 20),
                        PieCountdown(
                          seconds: 10,
                          size: 70,
                          nextScreen: AnswerExplained2(),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 6 OF 10',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "How to pronounce Wojciech Szczesny?",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),

                        Image.asset(
                          'assets/images/voice.png',
                          fit: BoxFit.fitWidth,
                          height: 294,
                          width: 294,
                        ),
                      ],
                    ),
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
