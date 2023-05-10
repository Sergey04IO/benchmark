import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/widgets/navigation/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    super.key,
    required this.child,
    this.title,
    this.backgroundColor = AppColors.grey2F3,
    this.iconColor = AppColors.primaryColor,
    this.appBarColor = AppColors.grey3F3,
  });

  final Widget? title;
  final Widget child;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? appBarColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.grey2F3,
      appBar: AppBar(
        backgroundColor: appBarColor ?? AppColors.grey3F3,
        titleSpacing: 0,
        title: title,
        iconTheme: IconThemeData(
          color: iconColor ?? AppColors.primaryColor,
        ),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: child,
    );
  }
}
