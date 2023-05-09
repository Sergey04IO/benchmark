import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CommonLoadingIndicator extends StatelessWidget {
  const CommonLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: AppColors.primaryColor),
    );
  }
}
