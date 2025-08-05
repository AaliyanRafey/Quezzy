import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/createQuiz/no_4.dart';
import 'package:queezy_app/views/LeaderBoard/user_rank_list.dart';

class WeeklyView extends StatelessWidget {
  const WeeklyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          no4(),
          const SizedBox(height: 10),

          // Use Stack to overlap base on top of pod
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Podium
              Image.asset(
                'assets/images/pod.png',
                height: 530,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Base + List (exact original positioning)
              Positioned(
                top:
                    380, // Same as your original 400 - adjusted for better overlap
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 720, // Match your base.png height
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        'assets/images/base.png',
                        height: 720,
                        color: Color(0xffefeefc),
                        width: 450,
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        top: 50, // Adjust this to move list up/down on base
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: UserRankList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 800), // extra space at bottom if needed
        ],
      ),
    );
  }
}
