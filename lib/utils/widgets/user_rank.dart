import 'package:flutter/material.dart';

class UserRank extends StatelessWidget {
  final String no, name, points, image;

  const UserRank({
    super.key,
    required this.no,
    required this.name,
    required this.points,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffffffff),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 36,
            left: 17,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE6E6E6), width: 2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  no,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RubikReg',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff858494),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 14,
            left: 55,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              height: 65,
              width: 65,
            ),
          ),

          Positioned(
            top: 22,
            left: 138,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'RubikMed',

                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            top: 51,
            left: 139,
            child: Text(
              points,
              style: TextStyle(
                color: Color(0xff858494),
                fontFamily: 'RubikReg',
                fontSize: 14.5,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
