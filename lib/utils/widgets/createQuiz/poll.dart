import 'package:flutter/material.dart';

class Poll extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Poll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildAnswerBox1(), SizedBox(height: 10), _buildAnswerBox2()],
    );
  }

  Widget _buildAnswerBox1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6),
        height: 62,
        width: 358,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEFEEEC), width: 3),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Add choice answer 1",
              hintStyle: TextStyle(
                color: Color(0xff858494),
                fontWeight: FontWeight.w500,
                fontFamily: 'RubikReg',
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 18,
              ),
            ),
            style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerBox2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6),
        height: 62,
        width: 358,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEFEEEC), width: 3),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Add choice answer 2",
              hintStyle: TextStyle(
                color: Color(0xff858494),
                fontWeight: FontWeight.w500,
                fontFamily: 'RubikReg',
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 18,
              ),
            ),
            style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
          ),
        ),
      ),
    );
  }
}
