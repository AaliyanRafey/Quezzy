import 'package:flutter/material.dart';

Widget findFriends() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.all(5),
      height: 272,
      width: 390,
      decoration: BoxDecoration(
        color: Color(0xff9087e5),
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: 2,
            left: 270,
            child: Image.asset(
              'assets/images/feautureshape1.png',
              fit: BoxFit.fitHeight,
              height: 110,
              width: 110,
            ),
          ),
          Positioned(
            top: 170,
            left: -2,

            height: 110,
            width: 110,
            child: Image.asset(
              'assets/images/feautureshape2.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 42,
            left: 132,
            child: Text(
              'FEATURED',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                fontFamily: 'RubikMed',
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF).withOpacity(0.85),
              ),
            ),
          ),
          Positioned(
            top: 86,
            left: 68,
            child: Text(
              'Take part in challenges\n  with friends or other \n               players',
              style: TextStyle(
                wordSpacing: 1,
                height: 1.2,
                fontSize: 21,
                fontFamily: 'RubikReg',
                fontWeight: FontWeight.w900,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 96,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 52,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/ff.png'),
                      Text(
                        'Find Friends',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'RubikReg',
                          fontSize: 17,
                          color: Color(0xff6A5AE0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: Image.asset(
              'assets/images/feauturea2.png',
              fit: BoxFit.cover,
              height: 55,
              width: 55,
            ),
          ),
          Positioned(
            top: 144,
            left: 288,
            child: Image.asset(
              'assets/images/feauturea3.png',
              height: 68,
              width: 68,
            ),
          ),
        ],
      ),
    ),
  );
}
