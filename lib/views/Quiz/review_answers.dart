import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/main_screen.dart';
import 'package:queezy_app/utils/widgets/question_list.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/quiz1.dart';
import 'package:queezy_app/views/Quiz/result_view.dart';

class ReviewAnswers extends StatelessWidget {
  const ReviewAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34),
            topRight: Radius.circular(34),
          ),

          border: Border(top: BorderSide(color: Color(0xffEFEEFC), width: 8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallClickButton(
              buttonColor: Color(0xff6a5ae0),
              textColor: Color(0xffffffff),
              text: "Edit Answer",
              h: 75,
              w: 175,
              onPressed: () {
                Get.to(Quiz1());
              },
            ),
            SmallClickButton(
              buttonColor: Colors.white,
              textColor: Color(0xff6A5AE0),
              text: "Submit",
              h: 75,
              w: 175,
              onPressed: () {
                Get.to(MainScreen());
              },
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 85.0),
                child: Row(
                  spacing: 58,
                  children: [
                    Text(
                      'Review Answers',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(ResultView());
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xff000000),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Container(
                  height: 280,
                  width: 385,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff6a5ae0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 28,
                        right: 20,
                        child: Image.asset('assets/images/ans.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, left: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QUIZ NAME',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'RubikReg',
                                color: Color(0xffefeefc),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'English Premier League Quiz',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height: 167,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF8FA2),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 15,
                                        left: 15,
                                        child: Image.asset(
                                          'assets/images/c.png',
                                          fit: BoxFit.cover,
                                          height: 128,
                                          width: 128,
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        left: 150,
                                        child: Text(
                                          'You answered 8\nout of 10\nquestions',
                                          style: TextStyle(
                                            fontFamily: 'RubikReg',
                                            color: Color(0xfffFFFFF),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 95,
                                        right: 2,
                                        child: Image.asset(
                                          'assets/images/oval6.png',
                                          fit: BoxFit.fitWidth,
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                      Positioned(
                                        top: 115,
                                        left: 120,
                                        child: Image.asset(
                                          'assets/images/oval6a.png',
                                          fit: BoxFit.fitWidth,
                                          height: 80,
                                          width: 80,
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text(
                  'Answers',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 375,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffEFEEFC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: List.generate(
                      questionList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 38),
                        child: QuestionColumn(item: questionList[index]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
