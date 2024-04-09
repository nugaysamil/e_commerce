// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appBarText;
  final IconData? appBarRightIcon;
  final IconData? appBarLeftIcon;
  const CustomAppBar({
    Key? key,
    required this.appBarText,
    required this.appBarRightIcon,
    required this.appBarLeftIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarText!,
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(appBarRightIcon),
        ),
      ],
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(appBarLeftIcon),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
