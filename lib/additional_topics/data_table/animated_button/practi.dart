import 'package:easy_coding/widgets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Practise extends StatelessWidget {
  const Practise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SvgPicture.asset(
          MyImages.heart,
          height: 140,
          width: 140,
          // Directly change the SVG color
          color: Colors.amber,
          // Optional: you can also change how color is applied
          colorBlendMode: BlendMode.srcIn,
        ),
      ),
    );
  }
}
