import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            top: -90,
            left: 113,
            child: Image.asset(
              'assets/images/onb2.png',

              height: 418,
              width: 418,
            ),
          ),
          Positioned(
            height: 48,
            width: 48,
            top: 136,
            left: 82,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 428,
            width: 428,
            top: 370,
            left: -90,
            child: Image.asset('assets/images/onb1.png'),
          ),
          Positioned(
            height: 20,
            width: 20,
            top: 460,
            left: 323,
            child: Image.asset('assets/images/oval2.png'),
          ),

          Positioned(
            top: 196,
            left: 5,
            child: Image.asset(
              'assets/images/onboard1.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitHeight,
              height: 260.0077362060547,
              width: 361.8121337890625,
            ),
          ),
          Positioned(
            top: 582,
            left: 170,
            child: Row(
              spacing: 15,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffFFFFFF), width: 2),
                  ),
                  child: Align(
                    alignment: Alignment.center, // You can change this!
                    child: Container(
                      height: 8, // As per your requirement
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 625,
            left: 15,
            child: Container(
              height: 264,
              width: 383,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Create gamified quizzes\n       becomes simple',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 27,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 35),

                  ClickButton(
                    buttonColor: Color(0xff6A5AE0),
                    textColor: Color(0xffFFFFFF),
                    text: 'Sign Up',
                    onPressed: () {
                      Get.toNamed(RoutesName.loginorsignup);
                    },
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color(0xff858494),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesName.loginView);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 16,
                            color: Color(0xff6A5AE0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
