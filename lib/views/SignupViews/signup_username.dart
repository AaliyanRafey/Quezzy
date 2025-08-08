import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class SignupUsername extends StatelessWidget {
  const SignupUsername({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xffEFEEFC),
          body: SafeArea(
            child: Column(
              children: [
                ///------
                ///--appBar--
                ///-----
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 30.h,
                  ),
                  child: Row(
                    spacing: 15.w,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.offAllNamed(RoutesName.signUpPass);
                        },
                        icon: Icon(Icons.arrow_back, size: 30.r),
                      ),
                      Text(
                        "Create a Username ?",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'RubikReg',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Email Field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    height: 60.h,
                    width: 371.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.r),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: " Your username",
                          hintStyle: TextStyle(
                            fontFamily: 'RubikReg',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff000000).withOpacity(0.4),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff6A5AE0),
                            size: 30.r,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 18.w,
                          ),
                        ),
                        style: TextStyle(fontSize: 17.sp, fontFamily: 'Rubik'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: LinearProgressIndicator(
                    value: 1.0, // ✅ this sets the progress to 33%
                    minHeight: 10.h,
                    backgroundColor: Color.fromARGB(255, 223, 223, 223),
                    valueColor: AlwaysStoppedAnimation(
                      Color(0xff6A5AE0),
                    ), // ✅ static color
                    borderRadius: BorderRadius.circular(
                      20.r,
                    ), // ✅ for rounded corners (needs Material 3 or wrap)
                  ),
                ),
                SizedBox(height: 20.h),
                ClickButton(
                  buttonColor: Color(0xff6A5AE0),
                  textColor: Color(0xffFFFFFF),
                  text: 'Reset Password',
                  onPressed: () {
                    Get.offAllNamed(RoutesName.loginView);
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 420.h,
          left: 336.w,
          child: Text(
            '3 of 3',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'RubikReg',
              fontSize: 20.sp,
              color: Color(0xff6A5AE0),
            ),
          ),
        ),
      ],
    );
  }
}
