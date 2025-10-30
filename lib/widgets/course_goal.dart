import 'package:easy_coding/view/utilit/colors.dart';
import 'package:flutter/material.dart';

class CourseGoal extends StatefulWidget {
  final String title;
  final String subtitle;
  final String description;

  const CourseGoal({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  State<CourseGoal> createState() => _CourseGoalState();
}

class _CourseGoalState extends State<CourseGoal> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          childrenPadding: EdgeInsets.zero,
          initiallyExpanded: _expanded,
          onExpansionChanged: (val) => setState(() => _expanded = val),
          title: Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            widget.subtitle,
            style: const TextStyle(color: MyColors.blackText),
          ),
          children: [
            const Divider(thickness: 1, height: 1),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            // const Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }
}
