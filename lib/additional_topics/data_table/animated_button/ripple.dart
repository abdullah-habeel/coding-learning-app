import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // for haptics

class RippleBounceButton extends StatefulWidget {
  const RippleBounceButton({super.key});

  @override
  State<RippleBounceButton> createState() => _RippleBounceButtonState();
}

class _RippleBounceButtonState extends State<RippleBounceButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 200),
      tween: Tween(begin: 1, end: isActive ? 1.3 : 1),
      curve: Curves.easeOut,
      builder: (context, scale, child) =>
          Transform.scale(scale: scale, child: child),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          splashColor: Colors.blue.withOpacity(0.3),
          customBorder: const CircleBorder(),
          onTap: () {
            HapticFeedback.mediumImpact(); // ✅ Vibration
            setState(() => isActive = !isActive);
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.notifications,
              size: 40,
              color: isActive ? Colors.blue : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
