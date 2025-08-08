import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MultipleAnswer extends StatelessWidget {
  const MultipleAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // ✅ Important!
      physics:
          NeverScrollableScrollPhysics(), // ✅ Prevents nested scroll conflict
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 262.w / 155.h,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            height: 102.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 155.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Color(0xffEFEEFC),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Color(0XFF6A5AE0),
                  iconSize: 30.r,
                ),
                Text(
                  'Add answer',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF6A5AE0),
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
