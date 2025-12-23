import 'package:easy_coding/kid_game/util/screens/screens/choose_game.dart';
import 'package:easy_coding/kid_game/util/screens/screens/flash_card.dart';
import 'package:easy_coding/kid_game/util/screens/screens/flip_card.dart';
import 'package:easy_coding/kid_game/util/screens/screens/random_card.dart';
import 'package:easy_coding/view/form/add_course.dart';
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
      home: AddCourse(),
    );
  }
}
