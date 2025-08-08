import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotchedContainer extends StatelessWidget {
  const NotchedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: BottomNotchClipper(),
        child: Container(
          width: 360.w,
          height: 180.h,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'Notched Container',
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
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
    path.lineTo(size.width.w, 0); // top-right
    path.lineTo(
      size.width.w,
      size.height.h - 20.h,
    ); // bottom-right (before dip)

    // Start of dip from right → middle
    path.quadraticBezierTo(
      size.width.w * 0.75,
      size.height.h, // control point
      size.width.w * 0.5,
      size.height.h, // center dip
    );

    // Middle → left side of dip
    path.quadraticBezierTo(
      size.width.w * 0.25.w,
      size.height.h, // control point
      0,
      size.height.h - 20.h, // left bottom
    );

    path.close(); // back to top-left
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
