import 'package:flutter/material.dart';

Widget topRankCard() {
  return Stack(
    clipBehavior: Clip.none, // 👈 allows overflow
    children: [
      // Blue container (main card)
      Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        height: 105,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff6A5AE0),
        ),
        child: Stack(
          children: [
            // Rank number circle
            Positioned(
              top: 36,
              left: 17,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffefeefc).withOpacity(0.3),
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Avatar
            Positioned(
              top: 14,
              left: 65,
              child: Image.asset(
                'assets/images/a4.png',
                fit: BoxFit.contain,
                height: 65,
                width: 65,
              ),
            ),
            // Flag
            Positioned(
              top: 65,
              left: 114,
              child: Image.asset(
                'assets/images/cz.png',
                fit: BoxFit.contain,
                height: 20,
                width: 20,
              ),
            ),
            // Top wave
            Positioned(
              top: -20,
              left: 135,
              child: Image.asset(
                'assets/images/toprankwave.png',
                fit: BoxFit.fitHeight,
                height: 129,
                width: 375.5,
              ),
            ),
            // Name
            const Positioned(
              top: 22,
              left: 148,
              child: Text(
                'Brandon Matrovs',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RubikMed',
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            // Points
            const Positioned(
              top: 55,
              left: 149,
              child: Text(
                '124 points',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RubikReg',
                  fontSize: 16.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),

      // Gold medal on top (half out)
      Positioned(
        top: -18,
        right: 30,
        child: Image.asset(
          'assets/images/goldmedal.png',
          fit: BoxFit.cover,
          height: 45,
          width: 45,
        ),
      ),
    ],
  );
}
