import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/small_click_button.dart';

class PlayQuiz extends StatelessWidget {
  const PlayQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              left: 4.w,
              child: IconButton(
                onPressed: () {
                  Get.toNamed(RoutesName.mainScreen);
                },
                icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
              ),
            ),
            Positioned(
              width: 250.w,
              height: 250.h,
              top: 180.h,
              left: -25.w,
              child: Image.asset(
                'assets/images/oval5b.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              width: 250.w,
              height: 250.h,
              top: 12.h,
              left: 220.w,
              child: Image.asset(
                'assets/images/5.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),

            Positioned(
              top: 25.h,
              left: -5.w,
              child: Image.asset(
                'assets/images/trivia.png',
                fit: BoxFit.cover,
                height: 320.h,
                width: 440.w,
              ),
            ),
            Positioned(
              top: 335.h,
              left: -4.w,
              child: Container(
                height: 510.h,
                width: 400.w,
                margin: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(18.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SPORTS',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'RubikReg',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Basic Trivia Quiz',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: 'RubikMed',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 68.h,
                        width: 370.w,
                        decoration: BoxDecoration(
                          color: Color(0xffEFEEFC),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/q.png',
                                  fit: BoxFit.cover,
                                  height: 35.h,
                                  width: 35.w,
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  '10 questions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'RubikReg',
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/divider.png',
                              fit: BoxFit.cover,
                              height: 40.h,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/p.png',
                                  fit: BoxFit.cover,
                                  height: 35.h,
                                  width: 35.w,
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  '+100 points',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'RubikReg',
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h),

                      Text(
                        'DESCRIPTION',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'RubikMed',
                          color: Color(0xff858494),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Any time is a good time for a quiz and even\nbetter if that happens to be a football\nthemed quiz!',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontFamily: 'RubikReg',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0C092A),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                          horizontal: 2.w,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Avatar + Flag
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  'assets/images/a6.png',
                                  fit: BoxFit.cover,
                                  height: 45.h,
                                  width: 45.w,
                                ),

                                // Positioned(
                                //   bottom: -1.5,
                                //   right: -3,
                                //   child: Image.asset(flag, width: 20, height: 20),
                                // ),
                              ],
                            ),
                            SizedBox(width: 16.sp),

                            // Name & Points
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brandon Curtis',
                                  style: const TextStyle(
                                    fontFamily: 'RubikMed',
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Creator',
                                  style: TextStyle(
                                    fontFamily: 'RubikMed',
                                    fontSize: 13.sp,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0.w, top: 42.h),
                        child: Row(
                          children: [
                            SmallClickButton(
                              buttonColor: Color(0xffFFFFFF),
                              textColor: Color(0XFF6A5AE0),
                              text: 'Play Solo',
                              onPressed: () {
                                Get.toNamed(RoutesName.quiz1);
                              },
                              h: 65.h,
                              w: 160.w,
                            ),
                            SizedBox(width: 12.w),
                            SmallClickButton(
                              buttonColor: Color(0xff6A5AE0),
                              textColor: Colors.white,
                              text: 'Play with friends',
                              onPressed: () {
                                Get.toNamed(RoutesName.quiz1);
                              },
                              h: 65.h,
                              w: 180.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
