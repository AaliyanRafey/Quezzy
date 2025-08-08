import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class ResetPassEmailView extends StatefulWidget {
  const ResetPassEmailView({super.key});

  @override
  State<ResetPassEmailView> createState() => _ResetPassEmailViewState();
}

class _ResetPassEmailViewState extends State<ResetPassEmailView> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFEEFC),

        body: Column(
          children: [
            //--------
            //    APPBAR
            //----------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
              child: Row(
                spacing: 40.w,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offAndToNamed(RoutesName.loginView);
                    },
                    icon: Icon(Icons.arrow_back, size: 30.r),
                  ),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your email and we will send you a link\nto reset your password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    wordSpacing: 1,
                    color: Colors.black.withOpacity(0.4),
                    fontFamily: 'RubikReg',
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left, // 👈 this matters too
                ),
              ),
            ),
            SizedBox(height: 42.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email Address",
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
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                height: 60.h,
                width: 371.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                ),
                child: Center(
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Your email address",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RubikReg',
                        fontWeight: FontWeight.w900,
                        color: Color(0xff000000).withOpacity(0.4),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
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

            SizedBox(height: 160.h),

            /// -----------
            /// lOGIN bUTTON
            /// ---------
            ClickButton(
              buttonColor: Color(0xff6A5AE0),
              textColor: Color(0xffFFFFFF),
              text: 'Reset Password',
              onPressed: () {
                Get.offAllNamed(RoutesName.resetPassPasswordView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
