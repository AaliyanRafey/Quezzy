import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/quiz3.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({super.key});

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
                'assets/images/top2.png',
                fit: BoxFit.cover,
                height: 36,
                width: 377,
              ),
              SizedBox(height: 18),
              Container(
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
                      PieCountdown(seconds: 10, size: 70, nextScreen: Quiz3()),
                      SizedBox(height: 40),
                      Image.asset(
                        'assets/images/quiz2.png',
                        fit: BoxFit.cover,
                        height: 290,
                        width: 290,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUESTION 4 OF 10',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'RubikReg',
                                color: Color(0xff858494),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Theodorus of Samos is the person who invented keys?",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              spacing: 5,
                              children: [
                                SmallClickButton(
                                  buttonColor: Color(0xffFF6666),
                                  textColor: Colors.white,
                                  text: 'False',
                                  onPressed: () {
                                    Get.toNamed(RoutesName.quiz3);
                                  },
                                  h: 70,
                                  w: 170,
                                ),
                                SmallClickButton(
                                  buttonColor: Color(0xff53DF83),
                                  textColor: Colors.white,
                                  text: 'True',
                                  onPressed: () {
                                    Get.toNamed(RoutesName.quiz3);
                                  },
                                  h: 70,
                                  w: 170,
                                ),
                              ],
                            ),
                          ],
                        ),
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
