import 'package:flutter/material.dart';

class Checkboxs extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Checkboxs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildAnswerBox(), SizedBox(height: 10), _buildAnswerBox()],
    );
  }

  Widget _buildAnswerBox() {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xffEFEEFC),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff6A5AE0), width: 2.5),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Add answer",
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
            ],
          ),
        ),
      ),
    );
  }
}
