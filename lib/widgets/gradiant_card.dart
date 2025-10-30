import 'package:flutter/material.dart';
import 'package:easy_coding/view/utilit/colors.dart';

class GradientCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Gradient gradient;

  const GradientCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.gradient = MyColors.mygradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image, height: 100, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
