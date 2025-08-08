import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/utils/widgets/setting_options.dart';
import 'package:queezy_app/views/Profile/helpandsupport.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                spacing: 102.w,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back, size: 30.r),
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontFamily: 'RubikMed',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'ACCOUNTS',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'RubikMed',
                    color: Color(0xff858494),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SettingOptions(
                title: 'Update Profile',
                subtitle: 'Update username, country, etc',
                image: 'assets/images/s1.png',
                ontap: null,
              ),
              SizedBox(height: 10.h),
              SettingOptions(
                title: 'Change Email Address',
                subtitle: 'madias@yahoo.com',
                image: 'assets/images/s2.png',
                ontap: null,
              ),
              SizedBox(height: 10.h),
              SettingOptions(
                title: 'Change Password',
                subtitle: 'last change 1 year ago',
                image: 'assets/images/s2.png',
                ontap: null,
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  'OTHERS',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'RubikMed',
                    color: Color(0xff858494),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // notification turn on or off
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.0.w,
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'RubikMed',
                        fontSize: 18.sp,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: null,
                      activeColor: Color(0xff6a5ae0),
                      inactiveThumbColor: Color(0xff6a5ae0),
                    ),
                  ],
                ),
              ),
              SettingOptions(
                title: 'Change Difficulty',
                subtitle: 'Easy, normal, hard',
                image: 'assets/images/s4.png',
                ontap: null,
              ),
              SizedBox(height: 10.h),
              SettingOptions(
                title: 'FAQ',
                subtitle: 'Most frequently asked question',
                image: 'assets/images/s5.png',
                ontap: () {
                  Get.to(Helpandsupport());
                },
              ),
              SizedBox(height: 25.h),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.mainOnboardingScreens);
                  },
                  child: Text(
                    'LogOut',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'RubikReg',
                      fontSize: 21,
                      color: Color(0xffEB5757),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 500.h),
            ],
          ),
        ),
      ),
    );
  }
}
