import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/search%20widgets/quizCard.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class Quizsection extends StatelessWidget {
  const Quizsection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchbarcontroller());

    return Obx(() {
      final quizzes = controller.quizzesToShow;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Section Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quiz',
                  style: TextStyle(
                    fontFamily: 'RubiKMed',
                    fontSize: 24.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 17,
                      color: Color(0xff6A5AE0),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 🔹 Quizzes List
          ListView.builder(
            itemCount: quizzes.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final quiz = quizzes[index];
              return Quizcard(
                title: quiz['title'] ?? '',
                subtitle: quiz['subtitle'] ?? '',
                image: quiz['image'] ?? '',
              );
            },
          ),
        ],
      );
    });
  }
}
