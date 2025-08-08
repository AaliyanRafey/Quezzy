import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
                child: Row(
                  spacing: 100.w,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.offAllNamed(RoutesName.loginorsignup);
                      },
                      icon: Icon(Icons.arrow_back, size: 30.r),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontFamily: 'RubikMed',
                        fontWeight: FontWeight.w700,
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
              SizedBox(height: 18.h),
              // Facebook Button
              LoginButton(
                label: 'Login with facebook',
                onPressed: () {},
                iconType: IconType.fontAwesome,
                iconData: FontAwesomeIcons.facebook,
                backgroundColor: Color(0xff0056B2),
                textColor: Colors.white,
              ),
              SizedBox(height: 35.h),
              // ---------0r------------
              Row(
                spacing: 35.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2.h,
                    width: 130.w,
                    color: Color(0xffe6e6e6),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xff858494),
                      fontSize: 19.sp,
                      fontFamily: 'RubikMed',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Container(
                    height: 2.h,
                    width: 130.w,
                    color: Color(0xffe6e6e6),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              ///-------------
              /// ENTER EMAIL AND PASSOWRD FIELDS
              /// ------------
              ///
              LoginFields(),

              SizedBox(height: 30.h),

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
              SizedBox(height: 10.h),

              //---------
              ///Forgot password
              ///==============
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed(RoutesName.resetPassEmailView);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 17.sp,
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
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0.w,
                  vertical: 10.h,
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
                            fontSize: 14.5.sp,
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of Services',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 14.5.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' &\n',
                          style: TextStyle(
                            fontFamily: 'RubikReg',
                            fontSize: 14.5.sp,
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy policy',
                          style: TextStyle(
                            fontFamily: 'RubikBold',
                            fontSize: 14.5.sp,
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
