import 'package:flutter/material.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({super.key});

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  final List<TextEditingController> _controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: _controllers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              children: [
                Expanded(child: _buildTextField(_controllers[index])),
                const SizedBox(width: 10),
                const Icon(Icons.drag_handle_rounded, size: 35),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _buildTextField(TextEditingController controller) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffEFEEEC), width: 3),
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Add answer",
          hintStyle: TextStyle(
            color: Color(0xff858494),
            fontWeight: FontWeight.w500,
            fontFamily: 'RubikReg',
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        ),
        style: const TextStyle(fontSize: 17, fontFamily: 'Rubik'),
      ),
    );
  }
}
