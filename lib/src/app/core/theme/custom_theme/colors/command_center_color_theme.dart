import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CommandCenterColorTheme extends ThemeExtension<CommandCenterColorTheme> {
  const CommandCenterColorTheme({
    required this.backgroundColor,
    required this.appBarColor,
    required this.cardColor,
    required this.iconColor,
    required this.dividerColor,
  });

  final Color? backgroundColor;
  final Color? appBarColor;
  final Color? cardColor;
  final Color? iconColor;
  final Color? dividerColor;

  static CommandCenterColorTheme? of(BuildContext context) {
    return Theme.of(context).extension<CommandCenterColorTheme>();
  }

  @override
  ThemeExtension<CommandCenterColorTheme> copyWith({
    Color? backgroundColor,
    Color? appBarColor,
    Color? cardColor,
    Color? iconColor,
    Color? dividerColor,
  }) {
    return CommandCenterColorTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      appBarColor: appBarColor ?? this.appBarColor,
      cardColor: cardColor ?? this.cardColor,
      iconColor: iconColor ?? this.iconColor,
      dividerColor: dividerColor ?? this.dividerColor,
    );
  }

  @override
  ThemeExtension<CommandCenterColorTheme> lerp(
    ThemeExtension<CommandCenterColorTheme>? other,
    double t,
  ) {
    if (other is! CommandCenterColorTheme) {
      return this;
    }
    return CommandCenterColorTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t),
      cardColor: Color.lerp(cardColor, other.cardColor, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),
    );
  }

  // the light theme
  static const light = CommandCenterColorTheme(
    backgroundColor: AppColors.greyC1F,
    appBarColor: AppColors.greyE31,
    iconColor: AppColors.grey396,
    cardColor: AppColors.greyA2A,
    dividerColor: AppColors.grey242,
  );
  // the dark theme
  // static const dark = CustomColorsTheme();
}
