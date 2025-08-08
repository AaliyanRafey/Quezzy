import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/faq_card.dart';
import 'package:queezy_app/utils/widgets/profile_searchbar.dart';

class Helpandsupport extends StatelessWidget {
  const Helpandsupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeefc),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back, size: 30.r),
                  ),
                  SizedBox(width: 50.w),
                  Text(
                    'Help and Support',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/basec.png',
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: 710.h,
                  ),
                  Positioned(
                    top: 30.h,
                    left: 0.w,
                    right: 0.w,
                    child: profileSearchBar(),
                  ),
                  Positioned(
                    top: 130.h,
                    left: 20.w,
                    right: 20.w,
                    child: FAQCard(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
