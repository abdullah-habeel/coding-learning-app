import 'package:easy_coding/view/form/course_player.dart';
import 'package:easy_coding/view/form/intro.dart';
import 'package:easy_coding/view/form/my_learning.dart';
import 'package:easy_coding/view/form/add_course.dart';
import 'package:easy_coding/view/form/paging.dart';
import 'package:easy_coding/view/form/quiz.dart';
import 'package:easy_coding/view/learning_path.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Paging(),
    );
  }
}
