import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:queezy_app/res/routes/routes_name.dart';

import 'package:queezy_app/views/Profile/option_select_screen_view.dart';
import 'package:queezy_app/utils/widgets/rank.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Positioned(
            width: 200.h,
            height: 200.h,
            top: -35.h,
            left: 234.w,
            child: Image.asset('assets/images/oval8.png', fit: BoxFit.fitWidth),
          ),
          Positioned(
            width: 30.w,
            height: 30.h,
            top: 30.h,
            left: 228.w,
            child: Image.asset(
              'assets/images/oval7c.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            width: 250.w,
            height: 250.h,
            top: 36.h,
            left: -40.w,
            child: Image.asset(
              'assets/images/oval8a.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            width: 20.w,
            height: 20.h,
            top: 34.h,
            left: 70.w,
            child: Image.asset(
              'assets/images/oval7d.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.mainScreen);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 35.r,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.settingView);
                      },
                      icon: Icon(
                        Icons.settings,
                        size: 35.r,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Container(
                margin: EdgeInsets.all(8.r),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Center(
                      child: Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 27.5.r,
                          fontFamily: 'RubikMed',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    rank(),
                    SizedBox(height: 20.h),
                    OptionSelectScreenView(), // 👈 Now it will render correctly!
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 60.h,
            left: 0.w,
            right: 0.w,
            child: Image.asset(
              'assets/images/a1.png',
              fit: BoxFit.fitHeight,
              height: 95.h,
              width: 95.w,
            ),
          ),

          Positioned(
            top: 132.h,
            left: 224.w,
            child: Image.asset(
              'assets/images/hun.png',
              width: 26.w,
              height: 26.h,
            ),
          ),
        ],
      ),
    );
  }
}
