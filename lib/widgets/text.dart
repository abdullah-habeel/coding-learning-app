import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final int? maxLines;

  const MyText({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.normal,
    this.color = Colors.black,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: TextStyle(fontSize: size, fontWeight: weight, color: color),
    );
  }
}
