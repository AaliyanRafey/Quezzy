import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                bottom: 100.h,
              ), // 👈 enough space for button
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  // above bar
                  // arorow, create quiz, three dots
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0.w,
                      vertical: 6.h,
                    ),
                    child: Row(
                      spacing: 72.w,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.offAllNamed(RoutesName.createQuizOne);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30.r,
                          ),
                        ),
                        Text(
                          'Create Quiz',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 25.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_rounded,
                            color: Color(0xffFFFFFF),
                            size: 30.r,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.h),

                  Container(
                    height: 769.h,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        QuestionStepper(),
                        SizedBox(height: 10.h),
                        coverImage(),
                        Padding(
                          padding: EdgeInsets.all(10.0.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 38.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffefeefc),
                                    width: 2.5.w,
                                  ),
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.0.w,
                                    ),
                                    child: Row(
                                      spacing: 3.w,
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Color(0xff6A5AE0),
                                          size: 22.r,
                                        ),
                                        Text(
                                          '20 Sec',
                                          style: TextStyle(
                                            fontSize: 14.sp,
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
                                  height: 42.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xffefeefc),
                                      width: 2.5.w,
                                    ),
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 2.0.w,
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0.r),
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
                                                    fontSize: 14.sp,
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
                        SizedBox(height: 5.h),

                        CustomTextField(
                          title: 'Add Question',
                          hintText: 'Enter your question',

                          controller: controller,
                          height: 62.h,
                          width: 371.w,
                        ),
                        SizedBox(height: 15.h),
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
              top: 760.h,
              left: 20.w,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0.w),
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
