import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/login_button.dart';
import 'package:queezy_app/utils/widgets/login_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFEEFC),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //--------
              //    APPBAR
              //----------
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Row(
                  spacing: 100,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.offAllNamed(RoutesName.loginorsignup);
                      },
                      icon: Icon(Icons.arrow_back, size: 30),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RubikReg',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),

              // Google Button
              LoginButton(
                label: 'Login with google',
                onPressed: () {},
                iconType: IconType.svg,
                assetPath: 'assets/icons/google.svg',
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
              SizedBox(height: 18),
              // Facebook Button
              LoginButton(
                label: 'Login with facebook',
                onPressed: () {},
                iconType: IconType.fontAwesome,
                iconData: FontAwesomeIcons.facebook,
                backgroundColor: Color(0xff0056B2),
                textColor: Colors.white,
              ),
              SizedBox(height: 35),
              // ---------0r------------
              Row(
                spacing: 35,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1, width: 130, color: Color(0xffe6e6e6)),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xff858494),
                      fontSize: 19,
                      fontFamily: 'RubikMed',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Container(height: 1, width: 130, color: Color(0xffe6e6e6)),
                ],
              ),
              SizedBox(height: 20),

              ///-------------
              /// ENTER EMAIL AND PASSOWRD FIELDS
              /// ------------
              ///
              LoginFields(),

              SizedBox(height: 30),

              /// -----------
              /// lOGIN bUTTON
              /// ---------
              ClickButton(
                buttonColor: Color(0xff6A5AE0),
                textColor: Color(0xffFFFFFF),
                text: 'Login',
                onPressed: () {
                  Get.offAllNamed(RoutesName.mainScreen);
                },
              ),
              SizedBox(height: 10),

              //---------
              ///Forgot password
              ///==============
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed(RoutesName.resetPassEmailView);
                  },
                  child: Text(
                    'Forgot Passowrd?',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff6A5AE0),
                      fontFamily: 'RubikBold',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),

              /// Terms
              /// and
              /// Condtions
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By continuing, you agree to the ',
                          style: TextStyle(
                            fontFamily: 'RubikReg',
                            fontSize: 14.5,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of Services',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 14.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' &\n',
                          style: TextStyle(
                            fontFamily: 'RubikReg',
                            fontSize: 14.5,
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy policy',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 14.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
