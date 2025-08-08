import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/leaderboard_controller.dart';

class LeaderBoardToggle extends StatelessWidget {
  final LeaderboardController controller = Get.put(LeaderboardController());

  LeaderBoardToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 56.h,
        width: 360.w,
        decoration: BoxDecoration(
          color: const Color(0xFF0C092A).withOpacity(0.16),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => controller.changeTab(0),
                child: AnimatedContainer(
                  height: 45.h,
                  width: 55.w,
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: controller.selectedTab.value == 0
                        ? Color(0xFF9087E5)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Weekly',
                    style: TextStyle(
                      color: controller.selectedTab.value == 0
                          ? Colors.white
                          : Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => controller.changeTab(1),
                child: AnimatedContainer(
                  height: 45.h,
                  width: 55.w,
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: controller.selectedTab.value == 1
                        ? Color(0xFF9F92F1)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'All Time',
                    style: TextStyle(
                      color: controller.selectedTab.value == 1
                          ? Colors.white
                          : Color(0xffe6e6e6),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
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
