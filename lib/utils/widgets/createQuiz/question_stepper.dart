import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/quiz_controller.dart';

class QuestionStepper extends StatelessWidget {
  final QuizController controller = Get.put(QuizController());
  QuestionStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(10, (index) {
            final isSelected = controller.selectedQuestionIndex.value == index;
            return GestureDetector(
              onTap: () => controller.changeQuestion(index),
              child: Container(
                width: 35, // 👈 Circle width
                height: 35, //
                margin: EdgeInsets.symmetric(horizontal: 6.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? Colors.black : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: isSelected ? 'RubikMed' : 'RubikReg',
                      fontSize: 16,
                      color: isSelected ? Color(0xffFFFFFF) : Color(0xff858494),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
