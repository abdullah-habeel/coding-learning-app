import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Comparison")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Material 2 Style"),
            const SizedBox(height: 6),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            TextButton(onPressed: () {}, child: const Text("Text Button")),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),

            const SizedBox(height: 20),

            const Text("Material 3 Style"),
            const SizedBox(height: 6),
            FilledButton(onPressed: () {}, child: const Text("Filled Button")),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text("Tonal Filled Button"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("M3 Elevated Button"),
            ),
          ],
        ),
      ),
    );
  }
}
