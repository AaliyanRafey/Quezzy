import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/category_block_for_createQuiz.dart';
import 'package:queezy_app/utils/widgets/click_button.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A5AE0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              SizedBox(height: 1.h), // add space below safe area
              Row(
                spacing: 20.h,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed(RoutesName.createQuizOne);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.r,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Choose Category',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontFamily: 'RubikReg',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h), // add space before the white container
              // Main White Container
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 14.w,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  child: Column(
                    children: [
                      // Categories grid
                      Expanded(
                        child: GridView.builder(
                          itemCount: categories.length,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 17,
                                mainAxisSpacing: 18,
                                childAspectRatio: 178.w / 156.h,
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
