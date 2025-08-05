import 'package:flutter/material.dart';

class TypeAnswer extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  TypeAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6),
        height: 102,
        width: 360,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEFEEFC), width: 3),
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: " Add answer",
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
