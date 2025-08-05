import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/extensions/questiontype_extension.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/createQuiz/checkbox.dart';
import 'package:queezy_app/utils/widgets/createQuiz/cover_image.dart';
import 'package:queezy_app/utils/widgets/createQuiz/multiple_answer.dart';
import 'package:queezy_app/utils/widgets/createQuiz/poll.dart';
import 'package:queezy_app/utils/widgets/createQuiz/puzzle.dart';
import 'package:queezy_app/utils/widgets/createQuiz/question_stepper.dart';
import 'package:queezy_app/utils/widgets/createQuiz/trueorfalse.dart';
import 'package:queezy_app/utils/widgets/createQuiz/type_answer.dart';
import 'package:queezy_app/utils/widgets/createQuiz/voice_note.dart';
import 'package:queezy_app/utils/widgets/custom_text_field.dart';
import 'package:queezy_app/view_model/controller/quiz_controller.dart';
import 'package:queezy_app/view_model/question_model.dart';

class QuizScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final QuizController quizController = Get.put(QuizController());
  QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 100,
              ), // 👈 enough space for button
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  // above bar
                  // arorow, create quiz, three dots
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 6,
                    ),
                    child: Row(
                      spacing: 72,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.offAllNamed(RoutesName.createQuizOne);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Create Quiz',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_rounded,
                            color: Color(0xffFFFFFF),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7),

                  Container(
                    height: 769,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        QuestionStepper(),
                        SizedBox(height: 10),
                        coverImage(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 38,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffefeefc),
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 3.0,
                                    ),
                                    child: Row(
                                      spacing: 3,
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Color(0xff6A5AE0),
                                          size: 22,
                                        ),
                                        Text(
                                          '20 Sec',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'RubikReg',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => Container(
                                  height: 42,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xffefeefc),
                                      width: 2.5,
                                    ),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0,
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: DropdownButton<Questiontype>(
                                            value: quizController
                                                .selectedQuestionType
                                                .value,
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              color: Color(0xff6A5AE0),
                                            ),
                                            items: Questiontype.values.map((
                                              type,
                                            ) {
                                              return DropdownMenuItem<
                                                Questiontype
                                              >(
                                                value: type,
                                                child: Text(
                                                  type.label, // Dart >= 2.17 supports `.name`
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'RubikReg',

                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (val) {
                                              if (val != null) {
                                                quizController
                                                    .changeQuestionType(val);
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),

                        CustomTextField(
                          title: 'Add Question',
                          hintText: 'Enter your question',

                          controller: controller,
                          height: 62,
                          width: 371,
                        ),
                        SizedBox(height: 15),
                        Obx(() {
                          switch (quizController.selectedQuestionType.value) {
                            case Questiontype.multipleAnswer:
                              return MultipleAnswer();
                            case Questiontype.trueOrFalse:
                              return Trueorfalse();
                            case Questiontype.typeAnswer:
                              return TypeAnswer();
                            case Questiontype.voiceNote:
                              return VoiceNote();
                            case Questiontype.checkBox:
                              return Checkboxs();
                            case Questiontype.poll:
                              return Poll();
                            case Questiontype.puzzle:
                              return Puzzle();
                          }
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 760,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClickButton(
                  buttonColor: Color(0xff6A5AE0),
                  textColor: Color(0xffffffff),
                  text: 'Add Question',
                  onPressed: () {
                    quizController.nextQuestion(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
