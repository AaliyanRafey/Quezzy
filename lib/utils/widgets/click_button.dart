import 'package:flutter/material.dart';

class ClickButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final VoidCallback? onPressed;

  const ClickButton({
    super.key,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 58.5,
        width: 358,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,

            style: TextStyle(
              fontFamily: 'RubikMed',
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
