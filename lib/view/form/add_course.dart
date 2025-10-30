import 'package:easy_coding/widgets/appbar.dart';
import 'package:easy_coding/widgets/button.dart';
import 'package:easy_coding/view/utilit/colors.dart';
import 'package:easy_coding/widgets/gapbox.dart';
import 'package:easy_coding/widgets/text.dart';
import 'package:easy_coding/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AddCourse extends StatelessWidget {
  const AddCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: 'Add Course'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GapBox(15),
                MyText(
                  text: 'Course Details:',
                  color: MyColors.secondary,
                  weight: FontWeight.bold,
                ),
                MyTextField(
                  label: 'Course Title',
                  hintText: 'Enter Course Name',
                ),
                MyTextField(label: 'Instructor', hintText: 'Enter Instructor'),
                MyTextField(label: 'Tools', hintText: 'Enter Tools'),
                MyTextField(
                  label: 'Description',
                  hintText: 'Enter Description ',
                  height: 100,
                ),
                GapBox(15),
                MyButton(text: 'Add', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
