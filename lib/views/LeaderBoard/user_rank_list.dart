import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/user_rank.dart';

class UserRankList extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'no': '1',
      'name': 'Davis Curtis',
      'points': '2569 pts',
      'image': 'assets/images/avatar1.png',
    },
    {
      'no': '2',
      'name': 'Alena Donin',
      'points': '1469 points',
      'image': 'assets/images/avatar2.png',
    },
    {
      'no': '3',
      'name': 'Craig Gouse',
      'points': '1,053 points',
      'image': 'assets/images/avatar3.png',
    },
    {
      'no': '4',
      'name': 'Madelyn Dias',
      'points': '590 points',
      'image': 'assets/images/avatar4.png',
    },
    {
      'no': '5',
      'name': 'Craig Gouse',
      'points': '1,053 points',
      'image': 'assets/images/avatar5.png',
    },
    {
      'no': '6',
      'name': 'Zain Vaccaro',
      'points': '448 pts',
      'image': 'assets/images/avatar6.png',
    },
    {
      'no': '7',
      'name': 'Skylar Geidt',
      'points': '448 points',
      'image': 'assets/images/avatar6.png',
    },
  ];
  UserRankList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        itemCount: users.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final user = users[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: UserRank(
              no: user['no']!,
              name: user['name']!,
              points: user['points']!,
              image: user['image']!,
            ),
          );
        },
      ),
    );
  }
}
