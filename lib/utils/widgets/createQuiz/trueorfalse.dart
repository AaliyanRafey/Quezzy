import 'package:flutter/material.dart';

class Trueorfalse extends StatelessWidget {
  const Trueorfalse({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true, // ✅ Important!
      physics:
          NeverScrollableScrollPhysics(), // ✅ Prevents nested scroll conflict
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 262 / 155,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 102,
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffEFEEFC),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Color(0XFF6A5AE0),
                  iconSize: 30,
                ),
                Text(
                  'Add true answer',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF6A5AE0),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 102,
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffEFEEFC),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Color(0XFF6A5AE0),
                  iconSize: 30,
                ),
                Text(
                  'Add false answer',
                  style: TextStyle(
                    fontFamily: 'RubikMed',
                    fontWeight: FontWeight.w900,
                    color: Color(0XFF6A5AE0),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
