import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/checkbox.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz7.dart';

class Quiz6 extends StatelessWidget {
  const Quiz6({super.key});

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
                  Get.toNamed(RoutesName.quiz7);
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
                          nextScreen: Quiz7(),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'QUESTION 7 OF 10',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RubikReg',
                                  color: Color(0xff858494),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Which three players shared the Premier League Golden Boot in 2018-19?',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'RubikReg',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 15),
                              CheckBoxScreen(),
                            ],
                          ),
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
