import 'package:easy_coding/widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLikeButton extends StatefulWidget {
  const LottieLikeButton({super.key});

  @override
  State<LottieLikeButton> createState() => _LottieLikeButtonState();
}

class _LottieLikeButtonState extends State<LottieLikeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool liked = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    return _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => liked = !liked);
        liked ? _controller.forward() : _controller.reverse();
      },
      child: Lottie.asset(
        MyImages.heartLottie,
        controller: _controller,
        repeat: false,
        height: 80,
      ),
    );
  }
}
