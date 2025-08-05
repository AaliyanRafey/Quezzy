import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/bottom_navigation_bar.dart';
import 'package:queezy_app/utils/widgets/floating_action_button.dart';
import 'package:queezy_app/view_model/controller/main_screen_controller.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';
import 'package:queezy_app/views/Discover/discover_view.dart';
import 'package:queezy_app/views/home_screen/home_screen.dart';
import 'package:queezy_app/views/LeaderBoard/leader_board.dart';
import 'package:queezy_app/views/Profile/profile_view.dart';

class MainScreen extends StatelessWidget {
  final MainScreenController _screenController = Get.put(
    MainScreenController(),
  );

  final Searchbarcontroller _searchController = Get.put(Searchbarcontroller());

  final List<Widget> screens = [
    HomeScreen(),
    DiscoverView(),
    LeaderBoardView(),
    ProfileView(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Obx(
        () => Container(
          color: const Color(0xff6A5AE0),
          child: SafeArea(
            bottom: false,
            child: screens[_screenController.selectedIndex.value],
          ),
        ),
      ),
      bottomNavigationBar: Obx(() {
        return _searchController.showBottomNav.value
            ? buildBottomNavBar()
            : SizedBox.shrink();
      }),
      floatingActionButton: Obx(() {
        return _searchController.showFloatButton.value
            ? buildFloatingButton()
            : SizedBox.shrink();
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
