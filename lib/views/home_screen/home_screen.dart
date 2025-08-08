import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queezy_app/views/home_screen/find_friends.dart';
import 'package:queezy_app/views/home_screen/live_quizzes.dart';
import 'package:queezy_app/views/home_screen/name_bar.dart';

import 'recent_quiz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6A5AE0),

      // 👇 Your Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: Color(0xff6A5AE0),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom:
                MediaQuery.of(context).padding.bottom + 80.h, // prevent overlap
          ),
          child: Column(
            children: [
              // Purple Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    nameBar(),
                    SizedBox(height: 20.h),
                    recentQuiz(),
                    SizedBox(height: 20.h),
                    findFriends(),
                  ],
                ),
              ),

              // White container with curved top
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, -4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.h, 14.h, 16.w, 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Live Quizzes',
                              style: TextStyle(
                                fontFamily: 'RubikMed',
                                fontSize: 26.5.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff0C092A),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See all',
                                style: TextStyle(
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 19.sp,
                                  color: const Color(0xff6A5AE0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Live Quizzes
                      liveQuizzes(),
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
