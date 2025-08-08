import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BadgeView extends StatelessWidget {
  final List badges = [
    'assets/images/b1.png',
    'assets/images/b22.png',
    'assets/images/b3.png',
    'assets/images/b4.png',
    'assets/images/b5.png',
    'assets/images/b6.png',
  ];
  BadgeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: GridView.builder(
        shrinkWrap: true, // ✅ Important!
        physics: ScrollPhysics(), // ✅ Prevents nested scroll conflict
        itemCount: badges.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 50.w / 50.h,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            badges[index],
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            height: 50.h,
            width: 50.w,
          );
        },
      ),
    );
  }
}
