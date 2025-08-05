import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                spacing: 40,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offAndToNamed(RoutesName.loginView);
                    },
                    icon: Icon(Icons.arrow_back, size: 30),
                  ),
                  Text(
                    'Reset Password',
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
                  'Enter your email and we will send you a link\nto reset your password',
                  style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 1,
                    color: Colors.black.withOpacity(0.4),
                    fontFamily: 'RubikReg',
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left, // 👈 this matters too
                ),
              ),
            ),
            SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email Address",
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
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Your email address",
                      hintStyle: TextStyle(
                        fontFamily: 'RubikReg',
                        fontWeight: FontWeight.w900,
                        color: Color(0xff000000).withOpacity(0.4),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
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

            SizedBox(height: 160),

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
