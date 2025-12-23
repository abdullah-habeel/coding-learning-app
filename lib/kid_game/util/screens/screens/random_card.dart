import 'package:easy_coding/kid_game/util/screens/util/colors.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/image_container.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/game_button.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/icon_button.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:easy_coding/widgets/text.dart';
import 'package:flutter/material.dart';

class RandomCard extends StatelessWidget {
  const RandomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgSecondary,
      appBar: AppBar(
        backgroundColor: AppColors.bgSecondary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left, size: 32, color: Colors.white),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              text: 'Colors',
              color: AppColors.textPrimary,
              weight: FontWeight.bold,
              size: 24,
            ),
            MyText(
              text: 'Random Cards Game',
              color: AppColors.textsecondary,
              weight: FontWeight.normal,
              size: 16,
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            icon: Icons.info,
            iconColor: AppColors.textsecondary,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Info"),
                  content: const Text("This is info about the lesson."),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("OK"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomImageContainer(
              imagePath: MyImages.html,
              text: 'Lesson Title',
            ),
            Align(
            alignment: Alignment.bottomCenter,
            child: GameButton(
              icons: [Icons.chevron_left, Icons.refresh,Icons.chevron_right],
              onPressedCallbacks: [
                (){},(){},(){}
                
              ],
              buttonColor: AppColors.bgSecondary,
              iconColor: Colors.white,
            ),
          )
          ],
        ),
      ),
    );
  }
}
