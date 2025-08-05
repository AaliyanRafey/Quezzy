import 'package:flutter/material.dart';

class FriendsCard extends StatelessWidget {
  final String name;
  final String point;
  final String image;
  final String flag;

  // final String flagAssetPath; // e.g. 'assets/flags/germany.png'

  const FriendsCard({
    super.key,
    required this.name,
    required this.point,
    required this.image,
    required this.flag,

    // required this.flagAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar + Flag
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(image, fit: BoxFit.cover, height: 65, width: 65),

              Positioned(
                bottom: -1.5,
                right: -3,
                child: Image.asset(flag, width: 20, height: 20),
              ),
            ],
          ),
          const SizedBox(width: 26),

          // Name & Points
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '$point points',
                style: TextStyle(
                  fontFamily: 'RubikMed',
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
