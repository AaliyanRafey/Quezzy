import 'package:flutter/material.dart';
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
  final double topSectionHeightPercentage = 0.52;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topSectionHeight = screenHeight * topSectionHeightPercentage;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent, // detect tap on empty space too
        onTap: () {
          FocusScope.of(context).unfocus(); // hide keyboard
          if (controller.isSearchActive.value) {
            controller.deactivateSearch(); // back to DiscoverView
          }
        },
        child: SafeArea(
          child: Column(
            children: [
              // Fixed Top Section (AppBar + SearchBar)
              Container(
                color: const Color(0xff6A5AE0),
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  children: [
                    appBar(),
                    const SizedBox(height: 5),
                    searchBar(),
                    const SizedBox(height: 25),
                  ],
                ),
              ),

              // Swappable Content Below
              Expanded(
                child: Obx(() {
                  return controller.isSearchActive.value
                      ? const SearchContainer() // White search results
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
        // Background Purple + White
        Column(
          children: [
            Container(
              height:
                  MediaQuery.of(context).size.height * 0.52 -
                  60, // Adjust for fixed app bar height
              color: const Color(0xff6A5AE0),
            ),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),

        // Scrollable Content
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Purple Section Content
              Container(
                // DesignBlocks height
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: DesignBlocks(),
                ),
              ),
              SizedBox(height: 30),

              // White Section Content
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(14, 10, 14, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12,
                        ),
                        child: Text(
                          'Top rank of the week',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 23,
                            color: Color(0xff0C092A),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      topRankCard(),
                      const CategorySection(),
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
