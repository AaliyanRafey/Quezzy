import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 365.w,
          height: 300.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Color(0xffefeefc),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(12.0.r),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent matches',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Container(
                          height: 42.h,
                          width: 94.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xffefeefc),
                              width: 2.5.w,
                            ),
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                            child: Row(
                              children: [
                                Text(
                                  'Monthly',
                                  style: TextStyle(
                                    fontFamily: 'RubikMed',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xff6A5AE0),
                                  size: 20.r,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/d1.png',
                          fit: BoxFit.fitWidth,
                          height: 100.h,
                          width: 300.w,
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 2.h,
                          width: 300.w,
                          color: Color(0xffD9D4F7),
                        ),
                        SizedBox(height: 3.h),
                        Image.asset(
                          'assets/images/d2.png',
                          fit: BoxFit.fitWidth,
                          height: 100.h,
                          width: 300.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 300.h),
      ],
    );
  }
}
