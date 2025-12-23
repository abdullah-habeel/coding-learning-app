import 'package:flutter/material.dart';

class GameOption {
  final String label;
  final VoidCallback onTap;

  GameOption({
    required this.label,
    required this.onTap,
  });
}

class GameOptionsRow extends StatelessWidget {
  final List<GameOption> options;
  final Color buttonColor;
  final Color textColor;
  final double height;
  final double borderRadius;
  final double horizontalGap;

  const GameOptionsRow({
    super.key,
    required this.options,
    this.buttonColor = const Color(0xFF2C2C2C),
    this.textColor = Colors.white,
    this.height = 45,
    this.borderRadius = 10,
    this.horizontalGap = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: options.map((option) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalGap),
            child: ElevatedButton(
              onPressed: option.onTap,
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(height),
                elevation: 0,
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Text(
                option.label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
