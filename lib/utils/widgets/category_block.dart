import 'package:flutter/material.dart';

class CategoryBlock extends StatelessWidget {
  final Color bgColor;
  final String image;
  final String text;
  final String quiz;

  const CategoryBlock({
    super.key,
    required this.bgColor,
    required this.image,
    required this.text,

    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173,
      width: 178,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, fit: BoxFit.fitHeight, height: 60, width: 60),
            SizedBox(height: 12),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'RubikReg',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 3),
            Text(
              quiz,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RubikReg',
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
