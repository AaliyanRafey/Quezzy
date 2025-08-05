import 'package:flutter/material.dart';

class NotchedContainer extends StatelessWidget {
  const NotchedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: BottomNotchClipper(),
        child: Container(
          width: 360,
          height: 180,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'Notched Container',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNotchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.moveTo(0, 0); // top-left
    path.lineTo(size.width, 0); // top-right
    path.lineTo(size.width, size.height - 20); // bottom-right (before dip)

    // Start of dip from right → middle
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height, // control point
      size.width * 0.5,
      size.height, // center dip
    );

    // Middle → left side of dip
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height, // control point
      0,
      size.height - 20, // left bottom
    );

    path.close(); // back to top-left
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
