import 'package:flutter/material.dart';

class Points extends StatelessWidget {
  final String image, text, number;
  const Points({
    super.key,
    required this.image,
    required this.text,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 32,
            height: 32,
            color: Colors.white,
          ),
          Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: 12.5,
              fontFamily: 'RubikMed',
              color: Color(0xffefeefc).withOpacity(0.5),
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 16.5,
              fontFamily: 'RubikMed',
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
