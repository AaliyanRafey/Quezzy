import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class SignupPass extends StatelessWidget {
  const SignupPass({super.key});

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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
                  ),
                  child: Row(
                    spacing: 5,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.offAllNamed(RoutesName.signUpEmail);
                        },
                        icon: Icon(Icons.arrow_back, size: 30),
                      ),
                      Text(
                        "What's your Password ?",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
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
                SizedBox(height: 10),
                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    height: 60,
                    width: 371,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: emailController,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Your password",
                          hintStyle: TextStyle(
                            fontFamily: 'RubikReg',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff000000).withOpacity(0.4),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xff6A5AE0),
                            size: 30,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 18,
                          ),
                        ),
                        style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: LinearProgressIndicator(
                    value: 0.63, // ✅ this sets the progress to 33%
                    minHeight: 10,
                    backgroundColor: Color.fromARGB(255, 223, 223, 223),
                    valueColor: AlwaysStoppedAnimation(
                      Color(0xff6A5AE0),
                    ), // ✅ static color
                    borderRadius: BorderRadius.circular(
                      20,
                    ), // ✅ for rounded corners (needs Material 3 or wrap)
                  ),
                ),
                SizedBox(height: 20),
                ClickButton(
                  buttonColor: Color(0xff6A5AE0),
                  textColor: Color(0xffFFFFFF),
                  text: 'Reset Password',
                  onPressed: () {
                    Get.toNamed(RoutesName.signUpUsername);
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 420,
          left: 336,
          child: Text(
            '2 of 3',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'RubikReg',
              fontSize: 20,
              color: Color(0xff6A5AE0),
            ),
          ),
        ),
      ],
    );
  }
}
