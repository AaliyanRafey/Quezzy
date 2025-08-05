import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:queezy_app/view_model/question_column_model.dart';

class QuestionColumn extends StatelessWidget {
  final QuestionsColumnModel item;
  const QuestionColumn({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              item.qno,
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'RubikReg',
                fontWeight: FontWeight.w600,
                color: Color(0xff6A5AE0),
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'RubikReg',
                fontWeight: FontWeight.w900,
                fontSize: 17.5,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: item.mainText),
                TextSpan(
                  text: item.subText != null ? '\n\n${item.subText}' : '',
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'RubikReg',
                    color: Color(0xff858494),
                  ),
                ),
              ],
            ),
          ),
        ),

        if (item.svgAsset != null && item.svgAsset!.trim().isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 6, top: 2),
            child: SvgPicture.asset(item.svgAsset ?? '', width: 6, height: 6),
          ),
      ],
    );
  }
}

final List<QuestionsColumnModel> questionList = [
  QuestionsColumnModel(
    qno: '1',
    mainText: 'Can you name the top 3 Premier League goal scorers?',
    subText: null,
    svgAsset: 'assets/icons/warn.svg',
  ),
  QuestionsColumnModel(
    qno: '2',
    mainText:
        "Name the clubs in England's top football division for the 2020 – 21 season.",
    subText: null,
    svgAsset: 'assets/icons/warn.svg',
  ),
  QuestionsColumnModel(
    qno: '3',
    mainText:
        'Which player scored the fastest hat-trick in the Premier League?',
    subText: 'Sadio Mane',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '4',
    mainText: 'Theodorus of Samos is the person who invented keys?',
    subText: 'True',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '5',
    mainText:
        'Who are three players share the record for most Premier League red cards (8)?',
    subText: 'Light Year',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '6',
    mainText: 'How to pronounce Wojciech Szczesny?',
    subText: 'voy · chek shez · nee',
    svgAsset: 'assets/icons/vol.svg',
  ),
  QuestionsColumnModel(
    qno: '7',
    mainText:
        'Which three players shared the Premier League Golden Boot in 2018-19?',
    subText: 'Mohamed Salah, Sadio Mane, Aubameyang',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '8',
    mainText: 'What is the best club in England?',
    subText: 'Manchester United',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '9',
    mainText: 'Sort the cartoon name in the picture above into order',
    subText: 'Bart Simpson',
    svgAsset: '',
  ),
  QuestionsColumnModel(
    qno: '10',
    mainText: 'What does UAV stand for drone?',
    subText: 'Unmanned Aerial Vehicle',
    svgAsset: '',
  ),
];
