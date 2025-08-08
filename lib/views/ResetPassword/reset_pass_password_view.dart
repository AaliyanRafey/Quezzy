import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/view_model/controller/password_Controller.dart';

class ResetPassPasswordView extends StatefulWidget {
  const ResetPassPasswordView({super.key});

  @override
  State<ResetPassPasswordView> createState() => _ResetPassPasswordViewState();
}

class _ResetPassPasswordViewState extends State<ResetPassPasswordView> {
  final TextEditingController passwordController = TextEditingController();
  final PasswordController controller = Get.put(PasswordController());
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEFEEFC),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // AppBar Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
                child: Row(
                  spacing: 15.w,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RoutesName.resetPassEmailView);
                      },
                      icon: Icon(Icons.arrow_back, size: 30.r),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'New Password',
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
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your new password must be different from\nthe previous used password',
                    style: TextStyle(
                      fontSize: 17.sp,
                      wordSpacing: 1,
                      color: Color(0xff858494),
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 40.h),

              // Password Label
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
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

              // Password Input Field
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        height: 60.h,
                        width: 371.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.isPasswordValid
                                ? const Color(0xff6A5AE0)
                                : Color(0xffFFFFFF),
                            width: 2.5.w,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: obscurePassword,
                            autocorrect: false,
                            enableSuggestions: true,
                            onChanged: (value) =>
                                controller.password.value = value,

                            obscuringCharacter: '●',
                            style: TextStyle(
                              fontFamily: 'RubikReg',
                              fontSize: 17.sp,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: "Your password",
                              hintStyle: TextStyle(
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                                color: Color(0xff858494),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Color(0xff6A5AE0),
                                size: 30.r,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: () {
                                  setState(() {
                                    obscurePassword = !obscurePassword;
                                  });
                                },
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.h,
                                horizontal: 18.w,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),

                      // Static error + conditional tick
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w),
                            child: Text(
                              "Must be at least 8 characters",
                              style: TextStyle(
                                color: Color(0xff858494),
                                fontSize: 15.sp,

                                fontWeight: FontWeight.w500,
                                fontFamily: 'RubikReg',
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 16.w),
                            child: controller.isPasswordValid
                                ? Icon(
                                    Icons.check,
                                    color: Colors.grey.shade400,
                                    size: 25.r,
                                  )
                                : SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),

              // Confirm Password Label
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Confirm Password",
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

              // Confirm Password Input Field
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    height: 60.h,
                    width: 371.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            controller.doPasswordMatch &&
                                controller.confirmPassword.isNotEmpty
                            ? Color(0xff6A5AE0)
                            : Colors.grey,
                        width: 2.5.w,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.r),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: confirmPasswordController,
                        obscureText: obscureConfirmPassword,
                        onChanged: (value) =>
                            controller.confirmPassword.value = value,
                        obscuringCharacter: '●',
                        autocorrect: false,
                        enableSuggestions: true,
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontSize: 17.sp,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Confirm password",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle: TextStyle(
                            fontFamily: 'RubikReg',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff858494),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xff6A5AE0),
                            size: 30.r,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscureConfirmPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                obscureConfirmPassword =
                                    !obscureConfirmPassword;
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 18.w,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100.h),

              // Reset Button
              Obx(
                () => ClickButton(
                  buttonColor:
                      controller.doPasswordMatch && controller.isPasswordValid
                      ? Color(0xff6A5AE0)
                      : Color(0xff858494),
                  textColor: const Color(0xffFFFFFF),
                  text: 'Reset Password',
                  onPressed:
                      controller.isPasswordValid && controller.doPasswordMatch
                      ? () => Get.offAllNamed(RoutesName.loginView)
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
