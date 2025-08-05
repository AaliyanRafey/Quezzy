import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';

class PlayQuiz extends StatelessWidget {
  const PlayQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 4,
              child: IconButton(
                onPressed: () {
                  Get.toNamed(RoutesName.mainScreen);
                },
                icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
              ),
            ),
            Positioned(
              width: 250,
              height: 250,
              top: 180,
              left: -25,
              child: Image.asset(
                'assets/images/oval5b.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              width: 250,
              height: 250,
              top: 12,
              left: 220,
              child: Image.asset(
                'assets/images/5.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),

            Positioned(
              top: 8,
              left: -5,
              child: Image.asset(
                'assets/images/trivia.png',
                fit: BoxFit.cover,
                height: 320,
                width: 440,
              ),
            ),
            Positioned(
              top: 315,
              left: -4,
              child: Container(
                height: 510,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SPORTS',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Basic Trivia Quiz',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'RubikMed',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 68,
                        width: 370,
                        decoration: BoxDecoration(
                          color: Color(0xffEFEEFC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/q.png',
                                  fit: BoxFit.cover,
                                  height: 35,
                                  width: 35,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '10 questions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'RubikReg',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/divider.png',
                              fit: BoxFit.cover,
                              height: 40,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/p.png',
                                  fit: BoxFit.cover,
                                  height: 35,
                                  width: 35,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '+100 points',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'RubikReg',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),

                      Text(
                        'DESCRIPTION',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Any time is a good time for a quiz and even\nbetter if that happens to be a football\nthemed quiz!',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 2,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Avatar + Flag
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  'assets/images/a6.png',
                                  fit: BoxFit.cover,
                                  height: 45,
                                  width: 45,
                                ),

                                // Positioned(
                                //   bottom: -1.5,
                                //   right: -3,
                                //   child: Image.asset(flag, width: 20, height: 20),
                                // ),
                              ],
                            ),
                            const SizedBox(width: 16),

                            // Name & Points
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brandon Curtis',
                                  style: const TextStyle(
                                    fontFamily: 'RubikMed',
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Creator',
                                  style: TextStyle(
                                    fontFamily: 'RubikMed',
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 42),
                        child: Row(
                          children: [
                            SmallClickButton(
                              buttonColor: Color(0xffFFFFFF),
                              textColor: Color(0XFF6A5AE0),
                              text: 'Play Solo',
                              onPressed: () {
                                Get.toNamed(RoutesName.quiz1);
                              },
                              h: 65,
                              w: 160,
                            ),
                            SizedBox(width: 12),
                            SmallClickButton(
                              buttonColor: Color(0xff6A5AE0),
                              textColor: Colors.white,
                              text: 'Play with friends',
                              onPressed: () {
                                Get.toNamed(RoutesName.quiz1);
                              },
                              h: 65,
                              w: 180,
                            ),
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
    );
  }
}
