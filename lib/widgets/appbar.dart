import 'package:easy_coding/view/utilit/colors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? actionIcon;
  final IconData? leadingIcon;
  final VoidCallback? onBackTap;
  final VoidCallback? onActionTap;

  const MyAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actionIcon,
    this.onBackTap,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,

      iconTheme: const IconThemeData(color: Colors.white),

      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: MyColors.mygradient),
      ),

      leading: leadingIcon != null
          ? IconButton(
              icon: Icon(leadingIcon),
              color: Colors.white,
              onPressed: onBackTap ?? () => Navigator.pop(context),
            )
          : null,

      title: Text(
        title ?? "",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),

      actions: actionIcon != null
          ? [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.40),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(actionIcon, color: MyColors.accent),
                  onPressed: onActionTap,
                ),
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
