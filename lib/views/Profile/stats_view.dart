import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/quiz_won.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1400,
      child: Column(
        children: [
          Column(
            children: [
              quizWon(),
              SizedBox(height: 25),
              Container(
                width: 365,
                height: 460,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff6A5AE0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 28.0,
                        horizontal: 20,
                      ),
                      child: Row(
                        spacing: 70,
                        children: [
                          Text(
                            'Top performance by\ncategory',
                            style: TextStyle(
                              fontFamily: 'RubikMed',
                              fontWeight: FontWeight.w900,
                              color: Color(0xffFFFFFF),
                              fontSize: 21,
                            ),
                          ),
                          Image.asset('assets/images/log.png'),
                        ],
                      ),
                    ),

                    Positioned(
                      top: -15,
                      left: 20,
                      child: Image.asset(
                        'assets/images/list.png',
                        fit: BoxFit.fitWidth,
                        height: 270,
                        width: 270,
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 20,
                      child: Image.asset(
                        'assets/images/stat.png',
                        fit: BoxFit.fitWidth,
                        height: 320,
                        width: 320,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
