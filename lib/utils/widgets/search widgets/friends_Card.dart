import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FriendsCard extends StatelessWidget {
  final String name;
  final String point;
  final String image;
  final String flag;

  // final String flagAssetPath; // e.g. 'assets/flags/germany.png'

  const FriendsCard({
    super.key,
    required this.name,
    required this.point,
    required this.image,
    required this.flag,

    // required this.flagAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar + Flag
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(image, fit: BoxFit.cover, height: 65.h, width: 65.w),

              Positioned(
                bottom: -1.5.h,
                right: -3.w,
                child: Image.asset(flag, width: 20.w, height: 20.h),
              ),
            ],
          ),
          SizedBox(width: 26.w),

          // Name & Points
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '$point points',
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 16.sp,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
