import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  final Color bgColor;
  final String image;
  final String text;
  final Color textColor;
  final String quiz;

  Category({
    required this.textColor,
    this.bgColor = const Color(0xffEFEEFC),
    required this.image,
    required this.text,
    required this.quiz,
  });
}
