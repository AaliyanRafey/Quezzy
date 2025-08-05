import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/utils/widgets/build_option.dart';
import 'package:queezy_app/view_model/controller/option_selection_controller.dart';
import 'package:queezy_app/views/Profile/badge_view.dart';
import 'package:queezy_app/views/Profile/detail.dart';
import 'package:queezy_app/views/Profile/stats_view.dart';

class OptionSelectScreenView extends StatelessWidget {
  final OptionSelectionController controller = Get.put(
    OptionSelectionController(),
  );
  final List options = ['Badge', 'Stats', 'Details'];
  OptionSelectScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(options.length * 2 - 1, (i) {
            if (i % 2 == 0) {
              // Real option widget
              return BuildOption(title: options[i ~/ 2], index: i ~/ 2);
            } else {
              // Spacer between options
              return SizedBox(width: 68); // Change width as needed
            }
          }),
        ),

        SizedBox(height: 20),
        Obx(() {
          switch (controller.selectedIndex.value) {
            case 0:
              return BadgeView();
            case 1:
              return StatsView();
            case 2:
              return Detail();
            default:
              return SizedBox.shrink();
          }
        }),
      ],
    );
  }
}
