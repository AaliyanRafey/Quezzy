import 'package:flutter/material.dart';

class VoiceNote extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  VoiceNote({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Add voice answer",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.mic_none_outlined, size: 30),
              ),
            ),
            hintStyle: TextStyle(
              color: Color(0xff858494),
              fontWeight: FontWeight.w500,
              fontFamily: 'RubikReg',
            ),

            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
          ),
          style: TextStyle(fontSize: 17, fontFamily: 'Rubik'),
        ),
      ),
    );
  }
}
