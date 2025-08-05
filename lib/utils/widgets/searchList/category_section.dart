import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    color: Color(0xff6A5AE0),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),

        // 🔹 Category Grid
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: GridView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
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
