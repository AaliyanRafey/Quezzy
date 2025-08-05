import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 365,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffefeefc),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent matches',
                          style: TextStyle(
                            fontFamily: 'RubikMed',
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Container(
                          height: 42,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xffefeefc),
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      fontFamily: 'RubikReg',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xff6A5AE0),
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/d1.png',
                          fit: BoxFit.fitWidth,
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 2,
                          width: 300,
                          color: Color(0xffD9D4F7),
                        ),
                        SizedBox(height: 3),
                        Image.asset(
                          'assets/images/d2.png',
                          fit: BoxFit.fitWidth,
                          height: 100,
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 300),
      ],
    );
  }
}
