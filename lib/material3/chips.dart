import 'package:flutter/material.dart';

class ChipsDemo extends StatefulWidget {
  const ChipsDemo({super.key});

  @override
  State<ChipsDemo> createState() => _ChipsDemoState();
}

class _ChipsDemoState extends State<ChipsDemo> {
  bool isFilterSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chips Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 10,
          children: [
            FilterChip(
              label: const Text("Filter"),
              selected: isFilterSelected,
              onSelected: (value) {
                setState(() {
                  isFilterSelected = value;
                });
              },
            ),
            ChoiceChip(
              label: const Text("Choice"),
              selected: true,
              onSelected: (_) {},
            ),
            InputChip(label: const Text("Input"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
