import 'package:easy_coding/kid_game/util/screens/widgets/my_text.dart';
import 'package:easy_coding/kid_game/util/screens/widgets/mybutton.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget leadingIcon;
  final String titleText;
  final CustomButton trailingButton;
  final VoidCallback? onTap;

  const CustomListTile({
    super.key,
    required this.leadingIcon,
    required this.titleText,
    required this.trailingButton,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      minVerticalPadding: 0,
      leading: leadingIcon,
      title: CustomText(
        text: titleText,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      trailing: SizedBox(
        width: trailingButton.width,
        height: trailingButton.height,
        child: trailingButton,
      ),
      onTap: onTap,
    );
  }
}
