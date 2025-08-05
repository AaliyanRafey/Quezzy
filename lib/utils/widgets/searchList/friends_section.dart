import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/search%20widgets/friends_Card.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

class FriendsSection extends StatelessWidget {
  const FriendsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Searchbarcontroller());

    return Obx(() {
      final friends = controller.friendsToShow;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Section Heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Friends',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),

          // 🔹 Friends Grid
          ListView.builder(
            itemCount: friends.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),

            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            itemBuilder: (context, index) {
              final friend = friends[index];
              return FriendsCard(
                name: friend['name'] ?? '',
                point:
                    friend['points'] ??
                    '', // use 'points', not 'point' if that’s your key
                image: friend['image'] ?? '',
                flag: friend['flag'] ?? '',
                // flagAssetPath: friend['flag'] ?? 'assets/flags/default.png', // add this in your data
              );
            },
          ),
        ],
      );
    });
  }
}
