import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/colors/command_center_color_theme.dart';
import 'package:flutter/material.dart';

class DividerGradientContainer extends StatelessWidget {
  const DividerGradientContainer({
    super.key,
    this.gradientStops = 20,
    this.orientation = Axis.horizontal,
  });

  final int gradientStops;
  final Axis orientation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: orientation == Axis.horizontal ? 1 : null,
      width: orientation == Axis.vertical ? 1 : null,
      decoration: BoxDecoration(
        color: CommandCenterColorTheme.of(context)?.dividerColor,
        gradient: LinearGradient(
          begin: orientation == Axis.horizontal
              ? Alignment.centerLeft
              : Alignment.topCenter,
          end: orientation == Axis.horizontal
              ? Alignment.centerRight
              : Alignment.bottomCenter,
          colors: _getDividerGradientColors(context),
          stops: _getDividerGradientStops(),
        ),
      ),
    );
  }

  List<Color> _getDividerGradientColors(BuildContext context) {
    final list = List.generate(
      gradientStops,
      (index) {
        final isOdd = (index % 2) == 0;
        if (isOdd) {
          return CommandCenterColorTheme.of(context)?.dividerColor ??
              AppColors.primaryColor;
        }

        return CommandCenterColorTheme.of(context)
                ?.dividerColor
                ?.withOpacity(0.25) ??
            AppColors.primaryColor;
      },
    );
    return list;
  }

  List<double> _getDividerGradientStops() {
    final list = List.generate(
      gradientStops,
      (index) {
        final value = index / gradientStops;
        return value;
      },
    );
    return list;
  }
}
