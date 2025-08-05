import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final int? maxLines;

  final String? title;
  final String hintText;
  final TextEditingController controller;
  final double height;
  final double width;
  final bool showIcon;
  final Widget? icon;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.height,
    required this.width,
    this.showIcon = false,
    this.icon,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 17.5,
              fontWeight: FontWeight.w900,
              fontFamily: 'RubikMed',
              color: Color(0xff0C092A),
            ),
          ),
        ),
        SizedBox(height: 8),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            height: 62,
            width: 356,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffEFEEFC), width: 3),
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Center(
              child: TextFormField(
                maxLines: maxLines ?? 1,
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  suffixIcon: showIcon && icon != null ? icon : null,
                  hintStyle: TextStyle(
                    color: Color(0xff858494),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'RubikReg',
                  ),

                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
