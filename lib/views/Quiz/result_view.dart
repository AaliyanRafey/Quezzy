import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';
import 'package:queezy_app/views/Quiz/review_answers.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 135.0),
              child: Row(
                spacing: 72,
                children: [
                  Text(
                    'Good Job!',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(RoutesName.quiz8);
                    },
                    icon: Icon(Icons.close, color: Color(0xff000000), size: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/goodjob.png',
              fit: BoxFit.fitHeight,
              width: 370,
              height: 350,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text(
                'ACCURATED ANSWERS',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'RubikReg',
                  color: Color(0xff858494),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(ReviewAnswers());
              },
              child: Image.asset(
                'assets/images/detail.png',
                fit: BoxFit.cover,
                width: 360,
                height: 220,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  SmallClickButton(
                    buttonColor: Color(0xff6a5ae0),
                    textColor: Colors.white,
                    text: 'Done',
                    onPressed: () {
                      Get.to(ReviewAnswers());
                    },
                    h: 64,
                    w: 280,
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 64,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0xffefeefc), width: 3),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          color: Color(0xff6a5ae0),
                          size: 35,
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
    );
  }
}
