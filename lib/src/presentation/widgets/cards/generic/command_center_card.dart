import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:flutter/material.dart';

class CommandCenterCard extends StatelessWidget {
  const CommandCenterCard({
    super.key,
    required this.child,
    this.title,
    this.height,
    this.width,
  });

  final Widget child;
  final String? title;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        color: AppColors.greyA2A,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(context),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title ?? '',
        style: CommandCenterTextTheme.of(context)?.headerSmallTextStyle,
      ),
    );
  }
}
