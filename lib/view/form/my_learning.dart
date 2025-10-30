import 'package:easy_coding/widgets/chips.dart';
import 'package:easy_coding/view/utilit/colors.dart';
import 'package:easy_coding/widgets/courses_card.dart';
import 'package:easy_coding/widgets/gapbox.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:easy_coding/widgets/search_chip.dart';
import 'package:flutter/material.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  GapBox(35),
                  SizedBox(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        SearchChip(onTap: () {}),
                        SizedBox(width: 20),
                        MyChips(label: 'Coding', onTap: () {}),
                        SizedBox(width: 20),
                        MyChips(label: 'Designing', onTap: () {}),
                        SizedBox(width: 20),
                        MyChips(label: 'Marketing', onTap: () {}),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),

                  CourseCard(
                    imageUrl: MyImages.web,
                    title: 'Web Development',
                    description: 'HTML,CSS,JavaScript..',
                    rating: 4,
                    modules: 10,
                    students: 10,
                  ),
                  CourseCard(
                    imageUrl: MyImages.app,
                    title: 'App Development',
                    description: 'Flutter ,Native,Cotlin..',
                    rating: 4,
                    modules: 10,
                    students: 10,
                  ),

                  CourseCard(
                    imageUrl: MyImages.graphics,
                    title: 'UI UX Designing',
                    description: 'Figma,Adobe XD,Illustrator',
                    rating: 4,
                    modules: 10,
                    students: 10,
                  ),
                  CourseCard(
                    imageUrl: MyImages.graphics,
                    title: 'Graphic Designing',
                    description: 'Adobe Photoshop,Canva,Illustrator',
                    rating: 4,
                    modules: 10,
                    students: 10,
                  ),
                  CourseCard(
                    imageUrl: MyImages.wordpress,
                    title: 'Wordpress',
                    description: 'HTML,CSS,JavaScript.',
                    rating: 4,

                    modules: 10,
                    students: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
