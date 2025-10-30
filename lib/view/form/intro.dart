import 'package:easy_coding/widgets/appbar.dart';
import 'package:easy_coding/widgets/button.dart';
import 'package:easy_coding/view/utilit/colors.dart';
import 'package:easy_coding/widgets/gapbox.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:easy_coding/widgets/text.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          leadingIcon: Icons.chevron_left,
          actionIcon: Icons.favorite,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 229,
                width: double.infinity,
                child: Image.asset(MyImages.web, fit: BoxFit.cover),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GapBox(15),
                    MyText(
                      text: 'Web Development Intro Video',
                      size: 18,
                      weight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    MyText(
                      text: 'By Skills Reward',
                      size: 14,
                      weight: FontWeight.w700,
                      color: MyColors.blackText,
                    ),
                    GapBox(20),
                    MyText(
                      text:
                          'We all want to go high in life but most of us do not have courge to do something new, which they never did before. In this world everything you achieve is on the base of your struggle and hardwork, life could be unfair but you need to adjust, lets start our coding journey',
                    ),
                    GapBox(10),
                    MyText(
                      text: 'Tools',
                      size: 14,
                      weight: FontWeight.w700,
                      color: MyColors.blackText,
                    ),
                    GapBox(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(MyImages.html, width: 50, height: 50),
                        Image.asset(MyImages.java, width: 50, height: 50),
                        Image.asset(MyImages.php, width: 50, height: 50),
                        Image.asset(MyImages.css, width: 50, height: 50),
                        Image.asset(MyImages.html, width: 50, height: 50),
                        Image.asset(MyImages.php, width: 50, height: 50),
                      ],
                    ),
                    GapBox(30),
                    MyButton(text: 'Enroll This Course', onPressed: () {}),
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
