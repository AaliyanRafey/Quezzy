import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PieCountdown extends StatefulWidget {
  final int seconds;
  final double size;
  final Widget nextScreen;

  const PieCountdown({
    super.key,
    this.seconds = 10,
    this.size = 74,
    required this.nextScreen,
  });

  @override
  State<PieCountdown> createState() => _PieCountdownState();
}

class _PieCountdownState extends State<PieCountdown>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.seconds),
    )..reverse(from: 1.0); // start from full

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Get.to(() => widget.nextScreen);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int get timeLeft => (_controller.value * widget.seconds).ceil();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.h,
      width: widget.size.w,

      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(widget.size, widget.size),
                painter: PiePainter(progress: _controller.value),
              ),
              Text(
                '$timeLeft',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'RubikMed',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PiePainter extends CustomPainter {
  final double progress;
  PiePainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    // Inner background circle
    final bgPaint = Paint()
      ..color =
          Color(0xFFFFCCD5) // 🎨 Background color (#FFCCD5)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      bgPaint,
    );

    // Progressing arc
    final progressPaint = Paint()
      ..color =
          Color(0xFFFF8FA2) // 🎯 Progress color (#FF8FA2)
      ..style = PaintingStyle.fill;

    double angle = 2 * 3.1415926 * progress;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -3.14159 / 2,
      angle,
      true,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant PiePainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
