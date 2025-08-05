import 'package:flutter/material.dart';

class SettingOptions extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback? ontap;
  const SettingOptions({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 88,
          padding: EdgeInsets.all(2),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffEFEEFC),

            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 15,
                child: Image.asset(
                  image,
                  height: 55,
                  width: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 19,
                left: 86,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
              ),
              Positioned(
                top: 48,
                left: 88,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'RubikReg',
                    color: Color(0xff000000).withOpacity(0.4),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.7,
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
      ),
    );
  }
}
