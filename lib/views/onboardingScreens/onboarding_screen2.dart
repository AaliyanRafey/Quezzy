import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            height: 241.65625,
            width: 241.65625,
            top: -51.09,
            left: 247.91,
            child: Image.asset('assets/images/oval3b.png'),
          ),

          Positioned(
            height: 418,
            width: 418,
            top: -86,
            left: 103,
            child: Image.asset('assets/images/oval3a.png'),
          ),
          Positioned(
            height: 48,
            width: 48,
            top: 136,
            left: 82,
            child: Image.asset('assets/images/oval1.png'),
          ),
          // Positioned(
          //   height: 12.638166427612305,
          //   width: 12.733139038085938,
          //   top: 317.7,
          //   left: 190,
          //   child: Image.asset('assets/images/oval2.png'),
          // ),
          Positioned(
            height: 20,
            width: 20,
            top: 460,
            left: 323,
            child: Image.asset('assets/images/oval2.png'),
          ),
          Positioned(
            height: 418,
            width: 418,
            top: 122,
            left: 18,
            child: Image.asset('assets/images/b2.png'),
          ),

          Positioned(
            height: 428,
            width: 428,
            top: 350,
            left: -90,
            child: Image.asset('assets/images/onb1.png'),
          ),
          Positioned(
            top: 582,
            left: 175,
            child: Row(
              spacing: 15,
              children: [
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffFFFFFF), width: 2),
                  ),
                  child: Align(
                    alignment: Alignment.center, // You can change this!
                    child: Container(
                      height: 7.5, // As per your requirement
                      width: 7.5,
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
                    'Find quizzes to test out\n       your knowledge',
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
