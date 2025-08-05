import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Email Address",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'RubikReg',
              color: Colors.black,
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
                decoration: InputDecoration(
                  hintText: "Your email address",
                  hintStyle: TextStyle(
                    color: Color(0xff858494).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'RubikReg',
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xff6A5AE0),
                    size: 26,
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

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Password",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'RubikReg',
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        // Password Field
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
                controller: passwordController,
                obscureText: obscurePassword,
                obscuringCharacter: '●',
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xff6A5AE0),
                    size: 26,
                  ),
                  hintText: "Your password",
                  hintStyle: TextStyle(
                    color: Color(0xff858494).withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'RubikReg',
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 18,
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
                  fontSize: 17,
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
