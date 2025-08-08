import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/utils/widgets/category_block.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 15.h),
          child: Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'RubikMed',
              fontSize: 25.5.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        // Category Blocks
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryBlock(
                bgColor: Color(0xff88E2CE),

                text: 'Maths',
                quiz: '12 Quizzes',
                image: 'assets/images/math.png',
              ),
              CategoryBlock(
                bgColor: Color(0xff9087E5),
                text: 'Science',
                quiz: '24 Quizzes',
                image: 'assets/images/science.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
