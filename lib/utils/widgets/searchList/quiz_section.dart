import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quiz',
                  style: TextStyle(
                    fontFamily: 'RubiKMed',
                    fontSize: 24.5.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 17.sp,
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
