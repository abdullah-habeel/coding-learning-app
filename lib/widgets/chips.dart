import 'package:flutter/material.dart';
import 'package:easy_coding/view/utilit/colors.dart';

class MyChips extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const MyChips({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Chip(
        labelPadding: const EdgeInsets.symmetric(horizontal: 12),
        backgroundColor: MyColors.primary.withOpacity(.35),
        shape: StadiumBorder(),
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
