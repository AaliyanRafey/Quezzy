import 'package:flutter/material.dart';
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
      color: Color(0xff6A5AE0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // BLUE DOT manually positioned
          Positioned(
            top: -11,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
          // MAIN white container with only top border radius
          ClipPath(
            // Use your custom clipper
            child: Container(
              width: double.infinity,

              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  bottom: 100,
                  top: 40,
                ), // Add top padding to account for the bump
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTabBar(),
                    const SizedBox(height: 10),
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
          Positioned(
            top: -4,
            left: 0,
            right: 0,
            child: CircleAvatar(radius: 5, backgroundColor: Color(0xff6A5AE0)),
          ),
        ],
      ),
    );
  }
}
