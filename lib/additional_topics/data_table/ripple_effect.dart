import 'package:flutter/material.dart';

class SprinkleEffect extends StatelessWidget {
  const SprinkleEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        splashColor: Colors.grey.withOpacity(0.3),
        highlightColor: Colors.transparent, 
        onTap: () {},
        child: const SizedBox.expand(
          child: Center(
            child: Text("Tap anywhere ",
             style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
