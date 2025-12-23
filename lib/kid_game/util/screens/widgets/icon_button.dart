import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color iconColor;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor = Colors.white,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Remove background color
      child: InkWell(
        splashColor: Colors.transparent, // Remove splash
        highlightColor: Colors.transparent, // Remove highlight
        onTap: onPressed,
        child: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: iconColor,
            size: 24,
          ),
        ),
      ),
    );
  }
}
