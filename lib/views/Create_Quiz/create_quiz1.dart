import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';
import 'package:queezy_app/utils/widgets/createQuiz/cover_image.dart';
import 'package:queezy_app/utils/widgets/custom_text_field.dart';

class CreateQuizOne extends StatelessWidget {
  const CreateQuizOne({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Column(
          children: [
            // above bar
            // arorow, create quiz, three dots
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12,
              ),
              child: Row(
                spacing: 72,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offAllNamed(RoutesName.mainScreen);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ),
                  Text(
                    'Create Quiz',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
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

            Container(
              height: 766,
              width: double.infinity,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  coverImage(),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: 'Title',
                    hintText: 'Enter quiz title',

                    controller: textController,
                    height: 62,
                    width: 371,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Quiz Category",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'RubikMed',
                        color: Color(0xff0C092A),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      height: 62,
                      width: 371,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEFEEEC), width: 3),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                            hintText: "Choose quiz category",
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: IconButton(
                                onPressed: () {
                                  Get.offAllNamed(RoutesName.chooseCategory);
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 20,
                                ),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xff858494),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'RubikReg',
                            ),

                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 18,
                            ),
                          ),
                          style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'RubikMed',
                        color: Color(0xff0C092A),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      height: 102,
                      width: 371,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEFEEFC), width: 3),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                            hintText: "Enter quiz description",
                            hintStyle: TextStyle(
                              color: Color(0xff858494),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'RubikReg',
                            ),

                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 18,
                            ),
                          ),
                          style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ClickButton(
                      buttonColor: Color(0xff6A5AE0),
                      textColor: Color(0xffffffff),
                      text: 'Add Question',
                      onPressed: () {
                        Get.offAllNamed(RoutesName.quizScreen);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
