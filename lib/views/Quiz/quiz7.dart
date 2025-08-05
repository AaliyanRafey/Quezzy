import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/percentage_options.dart';
import 'package:queezy_app/views/Quiz/quiz8.dart';

class Quiz7 extends StatelessWidget {
  const Quiz7({super.key});

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
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesName.quiz8);
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
                        SizedBox(height: 20),
                        PieCountdown(
                          seconds: 10,
                          size: 70,
                          nextScreen: Quiz8(),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 8 OF 10',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'What is the best club in England?',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        PercentageOption(
                          text: 'Manchester United',
                          fillPercentage: 0.92,
                        ),
                        SizedBox(height: 25),
                        PercentageOption(
                          text: 'Leeds United',
                          fillPercentage: .3,
                        ),
                        SizedBox(height: 25),
                        PercentageOption(text: 'Fulham', fillPercentage: .2),
                        SizedBox(height: 25),
                        PercentageOption(
                          text: 'Leicester City',
                          fillPercentage: .75,
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
