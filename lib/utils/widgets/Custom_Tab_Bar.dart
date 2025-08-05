import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchbarcontroller());
    final tabs = ['Top', 'Quiz', 'Categories', 'Friends'];
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        fontSize: 17,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 8,
                    width: 8,
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
