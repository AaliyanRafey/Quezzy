import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/login_button.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEEFC),
      body: SafeArea(
        child: Column(
          children: [
            ///------
            ///--appBar--
            ///-----
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
              child: Row(
                spacing: 95.w,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offAllNamed(RoutesName.loginorsignup);
                    },
                    icon: Icon(Icons.arrow_back, size: 30.r),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),

            LoginButton(
              label: 'Sign Up With Email',
              onPressed: () {
                Get.toNamed(RoutesName.signUpEmail);
              },
              iconData: Icons.email_outlined,
              iconType: IconType.fontAwesome,
              textColor: Colors.white,
              backgroundColor: Color(0xff6a5af0),
            ),
            SizedBox(height: 20.h),
            // Google Button
            LoginButton(
              label: 'Sign Up with google',
              onPressed: () {},
              iconType: IconType.svg,
              assetPath: 'assets/icons/google.svg',
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
            SizedBox(height: 20.h),
            // Facebook Button
            LoginButton(
              label: 'Sign Up with facebook',
              onPressed: () {},
              iconType: IconType.fontAwesome,
              iconData: FontAwesomeIcons.facebook,
              backgroundColor: Color(0xff0056B2),
              textColor: Colors.white,
            ),
            SizedBox(height: 30.h),
            //---------
            ///already haev an account
            ///==============
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'RubikReg',
                      fontSize: 16.sp,
                      color: Color(0xff858494),
                    ),
                    children: [
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontFamily: 'RubikBold',
                          fontSize: 16.sp,
                          color: Color(0xff6A5AE0),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // 👇 Navigate to Login screen here
                            Get.toNamed(RoutesName.loginView);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /// Terms
            /// and
            /// Condtions
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(9.r),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'by continuing, you agree to the ',
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontSize: 15.sp,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: ' Terms of Services',
                        style: TextStyle(
                          fontFamily: 'RubikBold',
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' &\n',
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontSize: 15.sp,
                          color: Colors.black.withOpacity(0.3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy policy',
                        style: TextStyle(
                          fontFamily: 'RubikBold',
                          fontSize: 15.sp,
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
    );
  }
}
