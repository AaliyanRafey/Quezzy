import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/question_row.dart';

class SubmitQuizView extends StatelessWidget {
  const SubmitQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            // Set height big enough to cover everything — adjust if needed
            height: 1400,
            child: Stack(
              children: [
                // === AppBar Row ===
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.offAllNamed(RoutesName.quizScreen);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Create Quiz',
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz_rounded,
                          color: Color(0xffFFFFFF),
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),

                // === Main Image ===
                Positioned(
                  width: 360,
                  height: 293,
                  top: 90,
                  left: 52,
                  child: Image.asset(
                    'assets/images/cq.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),

                // === Card Section ===
                Positioned(
                  top: 382,
                  left: 9.5,
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/nc.png',
                          fit: BoxFit.fitWidth,
                          width: 395,
                          height: 200,
                        ),
                        Positioned(
                          top: 30,
                          left: 24,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 36,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Color(0xffEFEEFC),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.devices,
                                        color: Color(0xff6A5AE0),
                                        size: 18,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        'TECH • 5 QUIZZES',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'RubikMed',
                                          color: Color(0xff6A5AE0),
                                          fontSize: 13.5,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 140),
                              SvgPicture.asset(
                                'assets/icons/googles.svg',

                                height: 35,
                                width: 35,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 85,
                          left: 24,
                          child: Text(
                            'Remote Work Tools Quiz',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 127,
                          left: 24,
                          child: Text(
                            'Take this basic remote work tools quiz to\ntest your tech knowledge.',
                            style: TextStyle(
                              fontFamily: 'RubikReg',
                              fontSize: 16.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff858494),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 600,
                  left: 11.5,
                  child: SizedBox(
                    child: Stack(
                      children: [
                        ClipRect(
                          child: Image.asset(
                            'assets/images/basec.png',
                            fit: BoxFit.fitHeight,
                            width: 390,
                            height: 710,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // Row for question and question number
                                children: [
                                  Text(
                                    'Question',
                                    style: TextStyle(
                                      fontFamily: 'RubikMed',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6A5AE0),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                          fontFamily: 'RubikMed',
                                          color: Color(0xffFFFFFF),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 200),
                              SvgPicture.asset(
                                'assets/icons/googles.svg',

                                height: 35,
                                width: 35,
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          top: 85,
                          left: 13,
                          child: Container(
                            height: 550,
                            width: 365,
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              color: Color(0xffEFEEFC),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: List.generate(
                                  items.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 20.0,
                                    ),
                                    child: QuestionRow(item: items[index]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 640,
                          left: 16,

                          child: ClickButton(
                            buttonColor: Color(0xff6A5AE0),
                            textColor: Color(0xffFFFFFF),
                            text: 'Save',
                            onPressed: () {
                              Get.toNamed(RoutesName.playQuiz);
                            },
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
      ),
    );
  }
}
