import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum IconType { svg, image, fontAwesome }

class LoginButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconType iconType;
  final String? assetPath; // for SVG or image
  final IconData? iconData; // for FontAwesome
  final Color backgroundColor;
  final Color textColor;
  final Color? iconColor;

  const LoginButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.iconType,
    this.assetPath,
    this.iconData,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    switch (iconType) {
      case IconType.svg:
        iconWidget = SvgPicture.asset(assetPath!, height: 25);
        break;
      case IconType.image:
        iconWidget = Image.asset(assetPath!, height: 10);
        break;
      case IconType.fontAwesome:
        iconWidget = FaIcon(
          iconData!,
          color: iconColor ?? Colors.white,
          size: 25,
        );
        break;
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(369, 63.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          iconWidget,
          const SizedBox(width: 15), // 🔥 space between icon and text
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontFamily: 'RubikReg',
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
