import 'package:flutter/material.dart';
import 'package:queezy_app/view_model/question_item_model.dart';

class QuestionRow extends StatelessWidget {
  final QuestionItem item;
  const QuestionRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 18,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              item.qno,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'RubikReg',
                fontWeight: FontWeight.w600,
                color: Color(0xff6A5AE0),
              ),
            ),
          ),
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontFamily: 'RubikMed',
              fontWeight: FontWeight.w700,
              fontSize: 17,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: item.mainText),

              TextSpan(
                text: item.subText,
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'RubikReg',
                  color: Color(0xff858494),
                ),
              ),
            ],
          ),
        ),

        Image.asset(item.image),
      ],
    );
  }
}

final List<QuestionItem> items = [
  QuestionItem(
    qno: '1',
    mainText:
        'Which mathematical\nsymbol was the title of Ed\nSheeran’s first album in\n2011?     \n\n',
    subText: 'Multiple Choice',
    image: 'assets/images/q1.png',
  ),
  QuestionItem(
    qno: '2',
    mainText: 'Bad Romance was Lady\nGaga’s first No. 1 hit?           \n\n',
    subText: 'True or False',
    image: 'assets/images/q2.png',
  ),

  QuestionItem(
    qno: '3',
    mainText: 'What is the name of The\nBeatles’ first album?            \n\n',
    subText: 'Type Answer',
    image: 'assets/images/q3.png',
  ),
  QuestionItem(
    qno: '4',
    mainText: "Who wrote the song\n'Let's Get It On'?                    \n\n",
    subText: 'Voice Note',
    image: 'assets/images/q4.png',
  ),
  QuestionItem(
    qno: '5',
    mainText:
        'Who was the 2 most\nstreamed artist on Spotify\nin 2019?         \n\n',
    subText: 'CheckBox',
    image: 'assets/images/q5.png',
  ),
];
