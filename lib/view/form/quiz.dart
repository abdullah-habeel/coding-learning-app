import 'package:easy_coding/widgets/course_goal.dart';
import 'package:easy_coding/widgets/floating_button.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:easy_coding/widgets/video_tile.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Center(child: Text('')),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        floatingActionButton: FloatingButton(
          onPressed: () => _showBottomSheet(context),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 229,
                child: Image.asset(MyImages.web, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CourseGoal(
                      title: 'Introduction How to set Your Course Goals',
                      subtitle: 'Skills Reward Instructor Team',
                      description:
                          'ahgoheo s es ehs eh ge ehs eens egs egesbds kbxkvn sdk dsk ds skhf s sf ksdkso ss hd',
                    ),
                    VideoTile(
                      title: 'Quiz',
                      subtitle: '5 Questions',
                      leadingIcon: Image.asset(MyImages.playbutton),
                    ),
                    VideoTile(
                      title: 'Quiz',
                      subtitle: '5 Questions',
                      leadingIcon: Image.asset(MyImages.playbutton),
                    ),
                    VideoTile(
                      title: 'Quiz',
                      subtitle: '5 Questions',
                      leadingIcon: Image.asset(MyImages.playbutton),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
