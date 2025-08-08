import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchbarcontroller());
    final tabs = ['Top', 'Quiz', 'Categories', 'Friends'];
    return Obx(() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tabs.map((tab) {
            final isSelected = controller.selectedTab.value == tab;

            return GestureDetector(
              onTap: () => controller.switchTab(tab),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedDefaultTextStyle(
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.w900
                          : FontWeight.w300,
                      fontFamily: 'RubikMed',
                      color: isSelected ? const Color(0xff6A5AE0) : Colors.grey,
                    ),
                    duration: Duration(microseconds: 200),
                    child: Text(
                      tab,
                      style: TextStyle(
                        fontWeight: isSelected
                            ? FontWeight.w900
                            : FontWeight.w100,
                        fontFamily: isSelected ? 'RubikMed' : 'RubikMed',
                        fontSize: 17.sp,
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 8.h,
                    width: 8.w,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xff6A5AE0)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      );
    });
  }
}
