import 'package:flutter/material.dart';

class SmallClickButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final VoidCallback? onPressed;
  final double h;
  final double w;

  const SmallClickButton({
    super.key,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
    required this.h,
    required this.w,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Color(0xffEFEEFC), width: 3),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,

            style: TextStyle(
              fontFamily: 'RubikMed',
              fontSize: 17.5,
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
