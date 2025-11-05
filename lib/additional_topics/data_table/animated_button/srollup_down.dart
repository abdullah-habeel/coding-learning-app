import 'package:flutter/material.dart';

class SimpleScreen extends StatefulWidget {
  const SimpleScreen({super.key});
  @override
  State<SimpleScreen> createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  final ScrollController _controller = ScrollController();
  bool _showBars = true;
  double _lastScroll = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      double current = _controller.offset;
      if (current > _lastScroll && _showBars) {
        setState(() => _showBars = false);
      } else if (current < _lastScroll && !_showBars) {
        setState(() => _showBars = true);
      }
      _lastScroll = current;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showBars ? AppBar(title: const Text('Scroll Demo')) : null,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _controller,
              itemCount: 40,
              itemBuilder: (context, index) =>
                  ListTile(title: Text('Item $index')),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _showBars
          ? BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
              ],
            )
          : null,
    );
  }
}
