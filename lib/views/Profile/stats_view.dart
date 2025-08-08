import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/quiz_won.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1400.h,
      child: Column(
        children: [
          Column(
            children: [
              quizWon(),
              SizedBox(height: 25.h),
              Container(
                width: 365.w,
                height: 460.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xff6A5AE0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 28.0.h,
                        horizontal: 20.w,
                      ),
                      child: Row(
                        spacing: 70.w,
                        children: [
                          Text(
                            'Top performance by\ncategory',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontWeight: FontWeight.w900,
                              color: Color(0xffFFFFFF),
                              fontSize: 21.sp,
                            ),
                          ),
                          Image.asset('assets/images/log.png'),
                        ],
                      ),
                    ),

                    Positioned(
                      top: -15.h,
                      left: 20.w,
                      child: Image.asset(
                        'assets/images/list.png',
                        fit: BoxFit.fitWidth,
                        height: 270.h,
                        width: 270.w,
                      ),
                    ),
                    Positioned(
                      top: 140.h,
                      left: 20.w,
                      child: Image.asset(
                        'assets/images/stat.png',
                        fit: BoxFit.fitWidth,
                        height: 320.h,
                        width: 320.w,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
