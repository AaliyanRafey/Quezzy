import 'package:flutter/material.dart';
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Row(
                  spacing: 15,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.offAndToNamed(RoutesName.resetPassEmailView);
                      },
                      icon: const Icon(Icons.arrow_back, size: 30),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'New Password',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RubikReg',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your new password must be different from\nthe previous used password',
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 1,
                      color: Color(0xff858494),
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Password Label
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'RubikReg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Password Input Field
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        height: 60,
                        width: 371,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.isPasswordValid
                                ? const Color(0xff6A5AE0)
                                : Color(0xffFFFFFF),
                            width: 2.5,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
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
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: "Your password",
                              hintStyle: TextStyle(
                                fontFamily: 'RubikReg',
                                fontWeight: FontWeight.w900,
                                color: Color(0xff858494),
                              ),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Color(0xff6A5AE0),
                                size: 30,
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
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 18,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Static error + conditional tick
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(
                              "Must be at least 8 characters",
                              style: TextStyle(
                                color: Color(0xff858494),
                                fontSize: 15,

                                fontWeight: FontWeight.w500,
                                fontFamily: 'RubikReg',
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: controller.isPasswordValid
                                ? Icon(
                                    Icons.check,
                                    color: Colors.grey.shade400,
                                    size: 25,
                                  )
                                : SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Confirm Password Label
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'RubikReg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Confirm Password Input Field
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    height: 60,
                    width: 371,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            controller.doPasswordMatch &&
                                controller.confirmPassword.isNotEmpty
                            ? Color(0xff6A5AE0)
                            : Colors.grey,
                        width: 2.5,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
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
                          fontSize: 17,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Confirm password",
                          hintStyle: TextStyle(
                            fontFamily: 'RubikReg',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff858494),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Color(0xff6A5AE0),
                            size: 30,
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
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 18,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),

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
