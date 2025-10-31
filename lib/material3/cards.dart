import 'package:flutter/material.dart';

class CardsM2M3 extends StatelessWidget {
  const CardsM2M3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cards Comparison")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              borderOnForeground: true,

              surfaceTintColor: Colors.red,

              child: Text('hello how are you i ma fine'),
            ),
            Card(
              semanticContainer: true,
              child: Column(
                children: [Text("Title"), Text("Some description")],
              ),
            ),
          ],
          // children: [
          //   const Text("Material 2 Card"),
          //   const SizedBox(height: 8),
          //   Card(
          //     elevation: 4,
          //     child: Padding(
          //       padding: const EdgeInsets.all(16),
          //       child: Text("Older M2 Card Design"),
          //     ),
          //   ),

          //   const SizedBox(height: 20),

          //   const Text("Material 3 Card"),
          //   const SizedBox(height: 8),
          //   Card(
          //     elevation: 0,
          //     clipBehavior: Clip.antiAlias,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(16),
          //     ),
          //     child: Container(
          //       padding: const EdgeInsets.all(16),
          //       color: Theme.of(context).colorScheme.surfaceVariant,
          //       child: Text("Modern M3 Card Design"),
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
