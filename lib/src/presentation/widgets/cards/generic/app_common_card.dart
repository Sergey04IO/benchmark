import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppCommonCard extends StatelessWidget {
  const AppCommonCard({
    super.key,
    this.child,
    this.height,
    this.width,
  });

  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey948.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 15,
          ),
        ],
      ),
      child: child,
    );
  }
}
