import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';

import 'package:queezy_app/view_model/controller/leaderboard_controller.dart';
import 'package:queezy_app/views/LeaderBoard/all_time_view.dart';
import 'package:queezy_app/views/LeaderBoard/leader_board_toggle.dart';
import 'package:queezy_app/views/LeaderBoard/weekly_view.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({super.key});

  @override
  State<LeaderBoardView> createState() => _LeaderBoardViewState();
}

class _LeaderBoardViewState extends State<LeaderBoardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Get.toNamed(RoutesName.mainScreen),
                icon: Icon(Icons.arrow_back, size: 30.sp, color: Colors.white),
              ),
              SizedBox(width: 64.w),
              Text(
                'Leaderboard',
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  color: Colors.white,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          LeaderBoardToggle(), // THIS SHOULD NOW APPEAR
          SizedBox(height: 20.h),
          Expanded(
            child: Obx(() {
              final selected =
                  Get.find<LeaderboardController>().selectedTab.value;
              return selected == 0 ? WeeklyView() : AllTimeView();
            }),
          ),
        ],
      ),
    );
  }
}
