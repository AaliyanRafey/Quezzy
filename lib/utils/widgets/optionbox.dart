import 'package:flutter/material.dart';

class CheckBoxOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CheckBoxOption({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          height: 67,
          width: 398,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffEFEEEC), width: 3),
            color: isSelected ? Color(0xffEFEEFC) : Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 25,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0XFF6A5AE0) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xff6A5AE0),
                    width: 2.5,
                  ),
                ),
                child: isSelected
                    ? const Icon(
                        Icons.check,
                        size: 18,
                        color: Color(0XFFffffff),
                      )
                    : null,
              ),
              const SizedBox(width: 16),
              Text(
                text,
                style: TextStyle(
                  fontSize: 19,
                  fontFamily: isSelected ? 'RubikMed' : 'RubikReg',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
