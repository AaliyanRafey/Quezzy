import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/utils/widgets/options.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/result_view.dart';

class Quiz8 extends StatelessWidget {
  const Quiz8({super.key});

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
                      PieCountdown(
                        seconds: 10,
                        size: 70,
                        nextScreen: ResultView(),
                      ),
                      // Image.asset(
                      //   'assets/images/3sec.png',
                      //   fit: BoxFit.cover,
                      //   height: 64,
                      //   width: 64,
                      // ),
                      SizedBox(height: 40),
                      Image.asset(
                        'assets/images/quiz8.png',
                        fit: BoxFit.fitWidth,
                        height: 250,
                        width: 390,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
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
                              "What does UAV stand for drone?",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 20),
                            Options(
                              text: 'unmanned Aerial Vehical',
                              color: Colors.white,
                              weight: FontWeight.w700,
                            ),
                            SizedBox(height: 20),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Under',
                                      onPressed: () {},
                                      h: 70,
                                      w: 90,
                                    ),
                                    SizedBox(width: 10),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'unmanned',
                                      onPressed: () {},
                                      h: 70,
                                      w: 150,
                                    ),
                                    SizedBox(width: 10),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Air',
                                      onPressed: () {},
                                      h: 70,
                                      w: 80,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),

                                Row(
                                  children: [
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Aerial',
                                      onPressed: () {},
                                      h: 70,
                                      w: 90,
                                    ),
                                    SizedBox(width: 10),
                                    SmallClickButton(
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      text: 'Vehical',
                                      onPressed: () {},
                                      h: 70,
                                      w: 150,
                                    ),
                                  ],
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
