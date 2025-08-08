import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Email Label
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Text(
            "Email Address",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'RubikMed',
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // Email Field
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            height: 60.h,
            width: 371.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.r),
            ),
            child: Center(
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Your email address",
                  hintStyle: TextStyle(
                    color: Color(0xff858494).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,

                    fontFamily: 'RubikReg',
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xff6A5AE0),
                    size: 26.r,
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

        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Text(
            "Password",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'RubikMed',
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        // Password Field
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
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
                controller: passwordController,
                obscureText: obscurePassword,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color.fromRGBO(106, 90, 224, 1),
                    size: 26.r,
                  ),
                  hintText: "Your password",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xff858494).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'RubikReg',
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 18.w,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xff858494).withOpacity(0.4),
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 17.sp,
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
