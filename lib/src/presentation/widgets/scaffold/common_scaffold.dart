import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/presentation/widgets/navigation/app_drawer.dart';
import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    super.key,
    required this.child,
    this.title,
    this.backgroundColor = AppColors.grey2F3,
    this.iconsColor = AppColors.primaryColor,
  });

  final Widget? title;
  final Widget child;
  final Color? backgroundColor;
  final Color? iconsColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
        titleSpacing: 0,
        title: title,
        iconTheme: IconThemeData(color: iconsColor),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: child,
    );
  }
}
