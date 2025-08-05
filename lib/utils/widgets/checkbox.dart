import 'package:flutter/material.dart';
import 'package:queezy_app/utils/widgets/optionbox.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  // Store which options are selected
  List<bool> selected = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckBoxOption(
          text: "Mohamed Salah",
          isSelected: selected[0],
          onTap: () {
            setState(() {
              selected[0] = !selected[0];
            });
          },
        ),
        CheckBoxOption(
          text: "Marcus Rashford",
          isSelected: selected[1],
          onTap: () {
            setState(() {
              selected[1] = !selected[1];
            });
          },
        ),
        CheckBoxOption(
          text: "Sadio Mane",
          isSelected: selected[2],
          onTap: () {
            setState(() {
              selected[2] = !selected[2];
            });
          },
        ),
        CheckBoxOption(
          text: "Aubameyang",
          isSelected: selected[3],
          onTap: () {
            setState(() {
              selected[3] = !selected[3];
            });
          },
        ),
      ],
    );
  }
}
