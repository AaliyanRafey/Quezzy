import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PercentageOption extends StatefulWidget {
  final String text;
  final double fillPercentage; // 0.92 for 92%
  final FontWeight weight;

  const PercentageOption({
    super.key,
    required this.text,
    required this.fillPercentage,
    this.weight = FontWeight.w900,
  });

  @override
  State<PercentageOption> createState() => _PercentageOptionState();
}

class _PercentageOptionState extends State<PercentageOption> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Container(
        height: 64.h,
        width: 360.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Color(0xffEFEEFC), width: 3.w),
        ),
        child: Stack(
          children: [
            // Animated fill bar (background layer)
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 64.h,
              width: isTapped ? 360 * widget.fillPercentage : 0,
              decoration: BoxDecoration(
                color: Color(0xffEFEEFC),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),

            // Foreground: Text and percentage
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(16.0.r),
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontWeight: widget.weight,
                          fontSize: 18.r,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  if (isTapped)
                    Padding(
                      padding: EdgeInsets.all(16.0.r),
                      child: Text(
                        "${(widget.fillPercentage * 100).toInt()}%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6A5AE0),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
