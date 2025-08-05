import 'package:flutter/material.dart';
import 'package:queezy_app/view_model/category_model.dart';

class CategoryBlockForCreatequiz extends StatelessWidget {
  final Category category;
  const CategoryBlockForCreatequiz({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: 132,
      decoration: BoxDecoration(
        color: category.bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              category.image,
              fit: BoxFit.fitHeight,
              height: 60,
              width: 60,
            ),
            SizedBox(height: 10),
            Text(
              category.text,
              style: TextStyle(
                fontFamily: 'RubikReg',
                fontSize: 20,
                color: category.textColor,

                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 2),
            Text(
              category.quiz,
              style: TextStyle(
                color: category.textColor,
                fontFamily: 'RubikReg',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Category> categories = [
  Category(
    bgColor: Color(0xffFF8FA2),
    image: 'assets/images/math.png',
    text: 'Math',
    quiz: '21 Quizzes',
    textColor: Color(0xffFFFFFF),
  ), //1
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/s.png',
    text: 'Sports',
    quiz: '18 Quizzes',
    textColor: Color(0xff6A5AE0),
  ), //2
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/musicc.png',
    text: 'Music',
    textColor: Color(0xff6A5AE0),
    quiz: '15 Quizzes',
  ), //3
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/science.png',
    textColor: Color(0xff6A5AE0),
    text: 'Science',
    quiz: '12 Quizzes', //4
  ),
  Category(
    bgColor: Color(0xffEFEEFC),
    textColor: Color(0xff6A5AE0),
    image: 'assets/images/art.png',
    text: 'Art',
    quiz: '12 Quizzes',
  ), //5
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/travel.png',
    textColor: Color(0xff6A5AE0),
    text: 'Travel',
    quiz: '14 Quizzes',
  ), //6
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/his.png',
    textColor: Color(0xff6A5AE0),
    text: 'History',
    quiz: '7 Quizzes',
  ), //7
  Category(
    bgColor: Color(0xffEFEEFC),
    image: 'assets/images/tech.png',
    textColor: Color(0xff6A5AE0),
    text: 'Tech',
    quiz: '8 Quizzes',
  ), //8
];
