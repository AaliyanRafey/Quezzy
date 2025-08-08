import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:queezy_app/views/LeaderBoard/user_rank_list.dart';

class AllTimeView extends StatelessWidget {
  const AllTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 10.h),

          // Use Stack to overlap base on top of pod
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Podium
              Image.asset(
                'assets/images/pod1.png',
                height: 470.h,
                width: double.infinity,
                fit: BoxFit.contain,
              ),

              // Base + List (exact original positioning)
              Positioned(
                top: 340
                    .h, // Same as your original 400 - adjusted for better overlap
                left: 0.w,
                right: 0.w,
                child: SizedBox(
                  // Match your base.png height
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'assets/images/base.png',
                        height: 780.h,
                        color: Color(0xffefeefc),
                        width: 780.w,
                        fit: BoxFit.contain,
                      ),

                      Positioned(
                        top: 20.h, // Adjust this to move list up/down on base
                        left: 0.w,
                        right: 0.w,
                        bottom: 0.h,
                        child: UserRankList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 800.h), // extra space at bottom if needed
        ],
      ),
    );
  }
}
