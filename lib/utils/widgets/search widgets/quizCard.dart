import 'package:flutter/material.dart';

class Quizcard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const Quizcard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Container(
        height: 90,
        padding: EdgeInsets.all(2),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(
            color: Color(0xff000000).withOpacity(0.1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 8,
              child: Image.asset(
                image,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 15,
              left: 98,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontWeight: FontWeight.w900,
                  fontSize: 18.5,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 100,
              child: Text(
                subtitle,
                style: TextStyle(
                  fontFamily: 'RubikReg',
                  color: Color(0xff000000).withOpacity(0.4),
                  fontWeight: FontWeight.w100,
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              top: 28,
              right: 15,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff6A5AE0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
