import 'package:flutter/material.dart';
import 'package:queezy_app/views/home_screen/find_friends.dart';
import 'package:queezy_app/views/home_screen/live_quizzes.dart';
import 'package:queezy_app/views/home_screen/name_bar.dart';
import 'package:queezy_app/views/home_screen/recent_quiz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double liveQuizTop = screenHeight * 0.70; // <-- Sweet spot

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 1. Background split: purple top, white bottom
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: liveQuizTop,
                color: const Color(0xff6A5AE0),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        nameBar(),
                        const SizedBox(height: 25),
                        recentQuiz(),
                        const SizedBox(height: 25),
                        findFriends(),
                      ],
                    ),
                  ),
                ),
              ),
              // White base (under LiveQuizzes)
              Expanded(child: Container(color: Colors.white)),
            ],
          ),

          // 2. Live Quizzes (Scrollable!)
          Positioned(
            top: liveQuizTop - 110, // Slight overlap (20px above)
            left: 0,
            right: 0,
            bottom: 0, // So it can scroll till the bottom nav
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 68),
                  child: Column(
                    children: [
                      // Header Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Live Quizzes',
                              style: TextStyle(
                                fontFamily: 'RubikMed',
                                fontSize: 24.5,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0C092A),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'See all',
                                style: TextStyle(
                                  fontFamily: 'RubikMed',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  color: Color(0xff6A5AE0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Your dynamic list or widget
                      liveQuizzes(),

                      // Extra space after list
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
