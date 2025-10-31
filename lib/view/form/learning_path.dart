import 'package:easy_coding/widgets/appbar.dart';
import 'package:easy_coding/widgets/courses_listtile.dart';
import 'package:easy_coding/widgets/gapbox.dart';
import 'package:easy_coding/widgets/gradiant_card.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:flutter/material.dart';

class LearningPath extends StatelessWidget {
  const LearningPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(leadingIcon: Icons.chevron_left),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GradientCard(
                title: 'Web Development',
                subtitle: 'By Skill Reward',
                image: MyImages.learningweb,
              ),
              GapBox(10),
              CourseTile(
                title: 'HTML;',
                lesson: 10,
                leadingIcon: Image.asset(MyImages.html),
              ),
              GapBox(10),

              CourseTile(
                title: 'CSS',
                lesson: 10,
                leadingIcon: Image.asset(MyImages.css),
              ),
              GapBox(10),

              CourseTile(
                title: 'Java Sript',
                lesson: 10,
                leadingIcon: Image.asset(MyImages.java),
              ),
              GapBox(10),

              CourseTile(
                title: 'PHP;',
                lesson: 10,
                leadingIcon: Image.asset(MyImages.php),
              ),
              GapBox(10),
            ],
          ),
        ),
      ),
    );
  }
}
