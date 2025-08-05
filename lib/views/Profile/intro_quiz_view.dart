import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroQuizView extends StatelessWidget {
  const IntroQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeefc),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back, size: 30),
                  ),
                  const SizedBox(width: 50),
                  Text(
                    'Help and Support',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/i.png',
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: 780,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
