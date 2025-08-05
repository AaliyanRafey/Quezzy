import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/countdown_widget.dart';
import 'package:queezy_app/views/Quiz/quiz4.dart';

class Quiz3 extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Quiz3({super.key});

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
                      PieCountdown(seconds: 10, size: 70, nextScreen: Quiz4()),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUESTION 5 OF 10',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'RubikReg',
                                color: Color(0xff858494),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Who are three players share the record for most Premier League red cards (8)?',
                              style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'RubikMed',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RoutesName.quiz4);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            height: 232,
                            width: 371,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffEFEEFC),
                                width: 3,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: TextFormField(
                                controller: controller,
                                decoration: InputDecoration(
                                  hintText: "Write your answer",
                                  hintStyle: TextStyle(
                                    color: Color(0xff858494),
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'RubikReg',
                                  ),

                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 18,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 140),
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {
                          Get.toNamed(RoutesName.quiz4);
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
