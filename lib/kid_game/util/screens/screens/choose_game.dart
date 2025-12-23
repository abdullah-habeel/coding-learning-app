import 'package:easy_coding/kid_game/util/screens/model/list_tile_model.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/container.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/list_tile.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/mybutton.dart';
import 'package:easy_coding/widgets/images.dart';
import 'package:flutter/material.dart';

class ChooseGame extends StatelessWidget {
  const ChooseGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 32, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            MyContainer(
              imagePath: MyImages.html,
              title: 'Colors',
              subtitle: '100+',
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 300,
                child: ListView.separated(
                  itemCount: tilesData.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final item = tilesData[index];
                    return CustomListTile(
                      leadingIcon: Icon(item['icon']),
                      titleText: item['text'],
                      trailingButton: CustomButton(
                        text: "Play",
                        backgroundColor: item["color"],
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
