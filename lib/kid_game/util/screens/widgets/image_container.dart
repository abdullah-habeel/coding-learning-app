import 'package:flutter/material.dart';
import 'package:easy_coding/kid_game/util/screens/util/colors.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;
  final String text;      
  final double height;    

  const CustomImageContainer({
    super.key,
    required this.imagePath,
    required this.text,
    this.height = 450, 
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: AppColors.bgPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 16), 
          Text(
            text,
            style: TextStyle(
              color: AppColors.textsecondary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
