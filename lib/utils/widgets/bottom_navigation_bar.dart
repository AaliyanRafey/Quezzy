import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/build_nav_items.dart';

Widget buildBottomNavBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 10,
          offset: Offset(0, -3),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 9,
        color: Colors.white,
        elevation: 0,
        child: SizedBox(
          height: 170,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // 👈 Spreads items evenly
            children: [
              buildNavItems("assets/icons/home.svg", 0),
              SizedBox(width: 8),
              buildNavItems("assets/icons/discover.svg", 1),
              SizedBox(
                width: 82,
              ), // 👈 Space for the notch / center FAB if needed
              buildNavItems("assets/icons/bar_chart_outlined.svg", 2),
              SizedBox(width: 8),
              buildNavItems("assets/icons/person_outline_outlined.svg", 3),
            ],
          ),
        ),
      ),
    ),
  );
}
