import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color amber = Color(0xFFFFDF3A);
  static const Color sky = Color(0xff18D2E5);
  static const Color green = Color(0xFFA6E616);
  static const Color red = Color(0xFFFD5781);
  static const Color purpleligt = Color(0xff237C9A);
  static const Color bgPrimary = Color(0xFF1A1C1F);
  static const Color bgSecondary = Color(0xFF121416);
  static const Color textPrimary = Color(0xFFDBDBDB);
  static const Color chipColor = Color(0xFF28292B);

  static const Color textsecondary = Color(0xffA7ADB3);
  static const Color textmain = Color(0xFFBBC2CD);

  static const LinearGradient mygradient = LinearGradient(
    colors: [Color(0xFF237C9A), Color(0xFF0F485C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );
}
