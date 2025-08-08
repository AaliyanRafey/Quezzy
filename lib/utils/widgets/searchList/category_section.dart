import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/search%20widgets/category_card.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchbarcontroller());

    final categories = controller.categoriesToShow;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔹 Heading Row
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    color: Color(0xff6A5AE0),
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),

        // 🔹 Category Grid
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: GridView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final category = categories[index];
              return CategoryCard(
                bgColor: category['bgColor'],
                logoback: category['logoColor'],
                text: category['name'],
                quiz: category['quizCount'],
              );
            },
          ),
        ),
      ],
    );
  }
}
