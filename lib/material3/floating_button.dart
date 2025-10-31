import 'package:flutter/material.dart';

class FabM2M3 extends StatelessWidget {
  const FabM2M3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FAB Comparison")),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(height: 10),
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(child: Text("Check FAB bottom right 👇")),
    );
  }
}
