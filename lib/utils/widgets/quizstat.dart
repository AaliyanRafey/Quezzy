import 'package:flutter/material.dart';

class QuizStat extends StatelessWidget {
  final String no, text, image;
  final Color boxColor, textColor;
  const QuizStat({
    super.key,
    required this.no,
    required this.text,
    required this.image,
    required this.boxColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: boxColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,

            child: Image.asset(image, fit: BoxFit.cover, height: 30, width: 30),
          ),
          Positioned(
            top: 18,
            left: 20,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$no\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'RubikMed',
                      color: textColor,
                      fontSize: 38,
                    ),
                  ),
                  TextSpan(
                    text: text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'RubikReg',
                      color: textColor,
                      fontSize: 14.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
