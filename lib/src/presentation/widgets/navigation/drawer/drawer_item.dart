import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    this.leading,
    this.title,
    this.onTap,
  });

  final Widget? leading;
  final Widget? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      onTap: () {
        Navigator.of(context).pop();
        onTap?.call();
      },
    );
  }
}
