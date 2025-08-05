import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/category_block_for_createQuiz.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              SizedBox(height: 1), // add space below safe area
              Row(
                spacing: 20,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed(RoutesName.createQuizOne);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Choose Category',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ), // add space before the white container
              // Main White Container
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      // Categories grid
                      Expanded(
                        child: GridView.builder(
                          itemCount: categories.length,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 17,
                                mainAxisSpacing: 18,
                                childAspectRatio: 178 / 156,
                              ),
                          itemBuilder: (context, index) {
                            return CategoryBlockForCreatequiz(
                              category: categories[index],
                            );
                          },
                        ),
                      ),

                      // Next Button
                      ClickButton(
                        buttonColor: const Color(0xff6A5AE0),
                        textColor: Colors.white,
                        text: 'Next',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
