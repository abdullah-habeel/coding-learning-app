import 'package:flutter/material.dart';
import 'package:easy_coding/kid_game/util/screens/util/colors.dart';

class GameButton extends StatelessWidget {
  final List<IconData> icons;
  final List<VoidCallback> onPressedCallbacks;
  final Color buttonColor;
  final Color iconColor;

  const GameButton({
    super.key,
    required this.icons,
    required this.onPressedCallbacks,
    this.buttonColor = Colors.blue,
    this.iconColor = Colors.white,
  }) : assert(
         icons.length >= 1 &&
             icons.length <= 3 &&
             icons.length == onPressedCallbacks.length,
         'Provide 1 to 3 icons with matching callbacks.',
       );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: AppColors.purpleligt,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            icons.length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: icons.length == 1 ? 0 : 10,
              ),
              child: CircleElevatedButton(
                icon: icons[index],
                onPressed: onPressedCallbacks[index],
                buttonColor: buttonColor,
                iconColor: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleElevatedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color buttonColor;
  final Color iconColor;

  const CircleElevatedButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 40,
    this.buttonColor = Colors.blue,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: buttonColor,
          padding: const EdgeInsets.all(0),
        ),
        child: Icon(icon, color: iconColor, size: size * 0.7),
      ),
    );
  }
}
