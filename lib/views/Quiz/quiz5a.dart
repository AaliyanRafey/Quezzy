import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class AnswerExplained2 extends StatelessWidget {
  const AnswerExplained2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Row(
                  spacing: 32,
                  children: [
                    Text(
                      'Answer Explained',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.quiz1);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color(0xffFFFFFF),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Container(
                height: 759,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'QUESTION 6 OF 10',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'How to pronounce Wojciech Szczesny?',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        'assets/images/voiceans.png',
                        height: 92,
                        width: 377,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'EXPLAINATION',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Pronunciation	English: / vɔɪtʃɛx/ VOY-chekh Polish: [ˈvɔjtɕɛx] ( listen).",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Gender:	male",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Word/name	origin: Polish",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 160),
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {
                          Get.toNamed(RoutesName.quiz6);
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
