import 'package:flutter/material.dart';
import 'package:easy_coding/view/utilit/colors.dart';

class VideoTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget leadingIcon;

  const VideoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
  });

  @override
  State<VideoTile> createState() => _CourseTileState();
}

class _CourseTileState extends State<VideoTile> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Colors.grey, width: 0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: widget.leadingIcon,
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),

                  Text(
                    widget.subtitle,
                    style: const TextStyle(
                      color: MyColors.blackText,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.pink : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
