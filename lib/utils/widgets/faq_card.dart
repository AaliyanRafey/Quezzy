import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:queezy_app/views/Profile/intro_quiz_view.dart';

class FAQCard extends StatelessWidget {
  const FAQCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Let parent scroll
      padding: const EdgeInsets.all(16),
      children: [
        // Section 1 Title
        const Text(
          'INTRO',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff858494),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),

        // Section 1 Items
        _faqItem('Intro to Queezy apps'),
        const SizedBox(height: 10),
        _faqItem('How to login or sign up'),

        const SizedBox(height: 30),

        // Section 2 Title
        const Text(
          'CREATE AND TAKE QUIZ',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff858494),
            fontFamily: 'RubikMed',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),

        // Section 2 Items
        _faqItem('How to create quiz in the app'),
        const SizedBox(height: 5),
        _faqItem('How to take quiz in the app'),
        const SizedBox(height: 5),
        _faqItem('How do I play quiz with other players?'),

        const SizedBox(height: 5),
        _faqItem('Can I invite my friends to play quiz together?'),
      ],
    );
  }

  Widget _faqItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        onPressed: () {
          Get.to(IntroQuizView());
        },
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'RubikMed',
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
