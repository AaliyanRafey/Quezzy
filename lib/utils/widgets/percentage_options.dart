import 'package:flutter/material.dart';

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
        height: 64,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffEFEEFC), width: 3),
        ),
        child: Stack(
          children: [
            // Animated fill bar (background layer)
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 64,
              width: isTapped ? 360 * widget.fillPercentage : 0,
              decoration: BoxDecoration(
                color: Color(0xffEFEEFC),
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            // Foreground: Text and percentage
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          fontFamily: 'RubikReg',
                          fontWeight: widget.weight,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  if (isTapped)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "${(widget.fillPercentage * 100).toInt()}%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6A5AE0),
                          fontSize: 16,
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
