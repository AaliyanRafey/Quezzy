import 'package:flutter/material.dart';
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
            width: 200,
            height: 200,
            top: -35,
            left: 234,
            child: Image.asset('assets/images/oval8.png', fit: BoxFit.fitWidth),
          ),
          Positioned(
            width: 30,
            height: 30,
            top: 30,
            left: 228,
            child: Image.asset(
              'assets/images/oval7c.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            width: 250,
            height: 250,
            top: 36,
            left: -40,
            child: Image.asset(
              'assets/images/oval8a.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            width: 20,
            height: 20,
            top: 34,
            left: 70,
            child: Image.asset(
              'assets/images/oval7d.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.mainScreen);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.settingView);
                      },
                      icon: Icon(Icons.settings, size: 35, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        'Madelyn Dias',
                        style: TextStyle(
                          fontSize: 27.5,
                          fontFamily: 'RubikMed',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    rank(),
                    SizedBox(height: 20),
                    OptionSelectScreenView(), // 👈 Now it will render correctly!
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/a1.png',
              fit: BoxFit.fitHeight,
              height: 95,
              width: 95,
            ),
          ),

          Positioned(
            top: 132,
            left: 224,
            child: Image.asset('assets/images/hun.png', width: 26, height: 26),
          ),
        ],
      ),
    );
  }
}
