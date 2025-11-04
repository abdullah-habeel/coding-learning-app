import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:easy_coding/widgets/images.dart';

class EasyAnimatedButton extends StatefulWidget {
  const EasyAnimatedButton({super.key});

  @override
  State<EasyAnimatedButton> createState() => _EasyAnimatedButtonState();
}

class _EasyAnimatedButtonState extends State<EasyAnimatedButton>
    with SingleTickerProviderStateMixin {
  bool liked = false;
  bool starSelected = false;
  bool switchSelected = false;
  bool rotateSelected = false;
  bool lottieLiked = false; // ✅ FIXED (separate boolean)
  double turns = 0;

  late AnimationController _lottieController;

  @override
  void initState() {
    super.initState();
    _lottieController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Different Animated Buttons"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListTile(
            title: const Text("Scale Animation Button"),
            trailing: AnimatedScale(
              scale: liked ? 1.3 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: IconButton(
                iconSize: 32,
                icon: Icon(
                  liked ? Icons.favorite : Icons.favorite_border,
                  color: liked ? Colors.red : Colors.grey,
                ),
                onPressed: () => setState(() => liked = !liked),
              ),
            ),
          ),
          const Divider(),

          ListTile(
            title: const Text("Color Change Animation"),
            trailing: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              child: IconButton(
                iconSize: 32,
                icon: const Icon(Icons.star),
                color: starSelected ? Colors.amber : Colors.grey,
                onPressed: () => setState(() => starSelected = !starSelected),
              ),
            ),
          ),
          const Divider(),

          ListTile(
            title: const Text("Icon Switch Animation"),
            trailing: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: IconButton(
                key: ValueKey(switchSelected),
                iconSize: 32,
                icon: Icon(
                  switchSelected ? Icons.thumb_up : Icons.thumb_up_outlined,
                  color: switchSelected ? Colors.blue : Colors.grey,
                ),
                onPressed: () =>
                    setState(() => switchSelected = !switchSelected),
              ),
            ),
          ),
          const Divider(),

          ListTile(
            title: const Text("Rotation Animation"),
            trailing: AnimatedRotation(
              turns: turns,
              duration: const Duration(milliseconds: 400),
              child: IconButton(
                iconSize: 32,
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  setState(() {
                    rotateSelected = !rotateSelected;
                    turns = rotateSelected ? 0.1 : 0;
                  });
                },
              ),
            ),
          ),
          const Divider(),

          /// ✅ Lottie Heart Animation (Fixed!)
          ListTile(
            title: const Text("Lottie Heart Animation"),
            trailing: GestureDetector(
              onTap: () {
                setState(() => lottieLiked = !lottieLiked);
                _lottieController
                  ..reset()
                  ..forward();
              },
              child: SizedBox(
                width: 45,
                height: 45,
                child: Lottie.asset(
                  lottieLiked ? MyImages.pinkheart : MyImages.newheart,
                  repeat: false,
                  controller: _lottieController,
                  onLoaded: (comp) =>
                      _lottieController.duration = comp.duration,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
