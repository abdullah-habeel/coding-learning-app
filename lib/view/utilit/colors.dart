import 'package:flutter/material.dart';

class MyColors {
  static const Color primary = Color(0xFF863FC1);
  static const Color secondary = Color(0xFFE531E9);
  static const Color accent = Color(0xFFF53636);
  static const Color blackText = Color(0xFF606060);
  static const Color background = Color(0xffF0E4FF);
  static const Gradient mygradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.topLeft,
    colors: [Color(0xFF863FC1), Color(0xFFE531E9), Color(0xFFF53636)],
  );
}
