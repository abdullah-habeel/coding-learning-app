// import 'package:final_project/custom_widgets/bottom_curve_widget.dart';

import 'package:easy_coding/view/form/add_course.dart';
import 'package:easy_coding/view/form/course_player.dart';
import 'package:easy_coding/view/form/intro.dart';
import 'package:easy_coding/view/form/my_learning.dart';
import 'package:easy_coding/view/form/quiz.dart';
import 'package:flutter/material.dart';

class Paging extends StatefulWidget {
  const Paging({super.key});

  @override
  State<Paging> createState() => _PagingState();
}

class _PagingState extends State<Paging> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = const [
    AddCourse(),
    MyLearning(),
    Intro(),
    MyLearning(),
    CoursePlayer(),
    Quiz(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            children: _pages,
          ),

          if (_currentPage < 3)
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: _currentPage == index ? 16 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
