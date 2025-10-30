import 'package:easy_coding/view/utilit/colors.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const MyIconButton({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.color = MyColors.accent,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: size, color: color);
  }
}
