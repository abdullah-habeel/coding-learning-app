import 'package:flutter/material.dart';
import 'package:easy_coding/view/utilit/colors.dart';

class FloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightElevation: 0,
        onPressed: onPressed,
        child: Ink(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: MyColors.mygradient,
          ),
          child: const Center(
            child: Icon(Icons.edit, color: Colors.white, size: 28),
          ),
        ),
      ),
    );
  }
}
