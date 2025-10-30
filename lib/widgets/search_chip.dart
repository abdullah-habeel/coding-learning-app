import 'package:flutter/material.dart';
import 'package:easy_coding/view/utilit/colors.dart';

class SearchChip extends StatelessWidget {
  final VoidCallback? onTap;
  final double size;

  const SearchChip({super.key, this.onTap, this.size = 38});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyColors.primary.withOpacity(.35),
        ),
        child: const Center(
          child: Icon(Icons.search, color: Colors.white, size: 20),
        ),
      ),
    );
  }
}
