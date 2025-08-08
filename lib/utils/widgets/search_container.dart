import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/Custom_Tab_Bar.dart';
import 'package:queezy_app/utils/widgets/category_section.dart';
import 'package:queezy_app/utils/widgets/searchList/friends_section.dart';
import 'package:queezy_app/utils/widgets/searchList/quiz_section.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Searchbarcontroller>();

    return Material(
      color: const Color(0xff6A5AE0),
      child: Column(
        children: [
          // Top blue dot
          SizedBox(
            height: 6.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -11.h,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -4.h,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5.r,
                    backgroundColor: const Color(0xff6A5AE0),
                  ),
                ),
              ],
            ),
          ),

          // Main white container fills remaining space
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 40.h),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTabBar(),
                      SizedBox(height: 10.h),
                      Obx(() {
                        final tab = controller.selectedTab.value;
                        return Column(
                          children: [
                            if (tab == 'Top' || tab == 'Quiz')
                              const Quizsection(),
                            if (tab == 'Top' || tab == 'Friends')
                              const FriendsSection(),
                            if (tab == 'Top' || tab == 'Categories')
                              const CategorySection(),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
