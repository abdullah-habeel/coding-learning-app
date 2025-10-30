import 'package:easy_coding/widgets/appbar.dart';
import 'package:easy_coding/widgets/gradiant_card.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:easy_coding/widgets/video_tile.dart';
import 'package:flutter/material.dart';

class CoursePlayer extends StatelessWidget {
  const CoursePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  image: MyImages.html,
                ),
                VideoTile(
                  title: 'Introduction to HTML',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
                VideoTile(
                  title: 'Introduction to Tag',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
                VideoTile(
                  title: 'Data types',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
                VideoTile(
                  title: 'OOPS',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
                VideoTile(
                  title: 'Operators',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
                VideoTile(
                  title: 'Course Outlines',
                  subtitle: '5 min',
                  leadingIcon: Image.asset(MyImages.playbutton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
