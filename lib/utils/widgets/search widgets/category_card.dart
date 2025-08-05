import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final Color logoback;
  final String text;
  final String quiz;

  const CategoryCard({
    super.key,
    required this.bgColor,
    required this.logoback,
    required this.text,

    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: logoback,
              ),
              child: Center(
                // child: Image.asset(),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'RubikMed',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              quiz,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RubikMed',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
