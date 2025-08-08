import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget findFriends() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.all(8.r),
      height: 282.h,
      width: 380.w,
      decoration: BoxDecoration(
        color: Color(0xff9087e5),
        borderRadius: BorderRadius.circular(25.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: 2.h,
            left: 285.w,
            child: Image.asset(
              'assets/images/feautureshape1.png',
              fit: BoxFit.fitHeight,
              height: 100.h,
              width: 100.w,
            ),
          ),
          Positioned(
            top: 185.h,
            left: -5.w,

            height: 100.h,
            width: 100.w,
            child: Image.asset(
              'assets/images/feautureshape2.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 42.h,
            left: 144.w,
            child: Text(
              'FEATURED',
              style: TextStyle(
                fontSize: 16.sp,
                letterSpacing: 1.5.w,
                fontFamily: 'RubikMed',
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF).withOpacity(0.85),
              ),
            ),
          ),
          Positioned(
            top: 81.h,
            left: 70.w,
            child: Text(
              'Take part in challenges\n  with friends or other \n               players',
              style: TextStyle(
                // wordSpacing: 1.w,
                // height: 1.2.h,
                fontSize: 25.sp,
                fontFamily: 'RubikReg',
                fontWeight: FontWeight.w900,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          Positioned(
            top: 192.h,
            left: 96.w,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 52.h,
                width: 180.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    spacing: 6.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/ff.png'),
                      Text(
                        'Find Friends',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'RubikReg',
                          fontSize: 17.sp,
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
            top: 16.h,
            left: 16.w,
            child: Image.asset(
              'assets/images/feauturea2.png',
              fit: BoxFit.cover,
              height: 60.h,
              width: 60.w,
            ),
          ),
          Positioned(
            top: 144.h,
            left: 288.w,
            child: Image.asset(
              'assets/images/feauturea3.png',
              height: 68.h,
              width: 68.w,
            ),
          ),
        ],
      ),
    ),
  );
}
