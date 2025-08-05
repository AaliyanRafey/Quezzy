import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class LoginorSignupView extends StatefulWidget {
  const LoginorSignupView({super.key});

  @override
  State<LoginorSignupView> createState() => _LoginorSignupViewState();
}

class _LoginorSignupViewState extends State<LoginorSignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: Stack(
        children: [
          Positioned(
            height: 106,
            width: 96,
            top: 80,
            left: 160,
            child: Image.asset('assets/images/logo.png'),
          ),
          Positioned(
            height: 323,
            width: 323,
            top: 166,
            left: 42,
            child: Image.asset(
              'assets/images/illus.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            height: 20,
            width: 20,
            top: 145,
            left: 346,
            child: Image.asset('assets/images/oval2.png'),
          ),
          Positioned(
            height: 49,
            width: 49,
            top: 100,
            left: 34,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 418,
            width: 418,
            top: 233,
            left: -115,
            child: Image.asset('assets/images/oval4.png'),
          ),
          Positioned(
            height: 14,
            width: 14,
            top: 330,
            left: 155,
            child: Image.asset('assets/images/oval1.png'),
          ),
          Positioned(
            height: 129,
            width: 129,
            top: 263,
            left: 322,
            child: Image.asset('assets/images/oval3.png'),
          ),
          Positioned(
            height: 240,
            width: 240,
            top: 302,
            left: -76,
            child: Image.asset('assets/images/oval4a.png'),
          ),
          Positioned(
            top: 506,
            left: 15,
            child: Container(
              height: 373,
              width: 383,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login or Sign Up',
                      style: TextStyle(
                        fontFamily: 'RubikMed',
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Login or create an account to take quiz,\n     take part in challenge, and more.',
                      style: TextStyle(
                        fontFamily: 'RubikReg',
                        fontSize: 17,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff858494),
                      ),
                    ),

                    SizedBox(height: 26),
                    ClickButton(
                      buttonColor: Color(0xff6A5AE0),
                      textColor: Color(0xffFFFFFF),
                      text: 'Login',
                      onPressed: () {
                        Get.toNamed(RoutesName.loginView);
                      },
                    ),
                    SizedBox(height: 16),
                    ClickButton(
                      buttonColor: Color(0xffE6E6E6),
                      textColor: Color(0xff6A5AE0),
                      text: 'Create an account',
                      onPressed: () {
                        Get.toNamed(RoutesName.signUp);
                      },
                    ),
                    SizedBox(height: 16),
                    ClickButton(
                      buttonColor: Color(0xffFFFFFF),
                      textColor: Color(0xff858494),
                      text: 'Later',
                      onPressed: () {
                        Get.toNamed(RoutesName.mainOnboardingScreens);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
