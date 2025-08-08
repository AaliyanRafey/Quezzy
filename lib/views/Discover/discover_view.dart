import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/category_section.dart';
import 'package:queezy_app/utils/widgets/top_Rank_card.dart';
import 'package:queezy_app/views/Discover/discover_app_bar.dart';
import 'package:queezy_app/views/Discover/discover_design_blocks.dart';
import 'package:queezy_app/views/Discover/discover_search_bar.dart';
import 'package:queezy_app/utils/widgets/search_container.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class DiscoverView extends StatelessWidget {
  DiscoverView({super.key});

  final controller = Get.put(Searchbarcontroller());
  final double topSectionHeightPercentage = 0.52.h;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topSectionHeight = screenHeight * topSectionHeightPercentage;

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
          if (controller.isSearchActive.value) {
            controller.deactivateSearch();
          }
        },
        child: SafeArea(
          bottom:
              false, // ← This is important to allow content behind bottom nav
          child: Column(
            children: [
              // Fixed Top Section (AppBar + SearchBar)
              Container(
                color: const Color(0xff6A5AE0),
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Column(
                  children: [
                    appBar(),
                    SizedBox(height: 5.h),
                    searchBar(),
                    SizedBox(height: 25.h),
                  ],
                ),
              ),

              // Swappable Content Below
              Expanded(
                child: Obx(() {
                  return controller.isSearchActive.value
                      ? const SearchContainer()
                      : _buildNormalDiscoverView(context, topSectionHeight);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNormalDiscoverView(BuildContext context, double topHeight) {
    return Stack(
      children: [
        // Purple top section background
        Container(height: topHeight - 95.h, color: const Color(0xff6A5AE0)),

        // Scrollable content
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Purple section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: DesignBlocks(),
              ),
              SizedBox(height: 30.h),

              // White section with rounded top
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                    10.h,
                    10.w,
                    14.w,
                    0,
                  ), // ← Remove bottom padding
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 12.h,
                        ),
                        child: Text(
                          'Top rank of the week',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 25.sp,
                            color: const Color(0xff0C092A),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      topRankCard(),
                      const CategorySection(),
                      SizedBox(
                        height: kBottomNavigationBarHeight,
                      ), // ← Add space for bottom nav
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
