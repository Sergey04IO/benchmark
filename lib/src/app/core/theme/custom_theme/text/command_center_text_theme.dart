import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CommandCenterTextTheme extends ThemeExtension<CommandCenterTextTheme> {
  const CommandCenterTextTheme({
    required this.headerMediumTextStyle,
    required this.headerSmallTextStyle,
    required this.subtitleTextStyle,
    required this.bodyMediumTextStyle,
    required this.bodySmallTextStyle,
  });

  final TextStyle? headerMediumTextStyle;
  final TextStyle? headerSmallTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? bodyMediumTextStyle;
  final TextStyle? bodySmallTextStyle;

  static CommandCenterTextTheme? of(BuildContext context) {
    return Theme.of(context).extension<CommandCenterTextTheme>();
  }

  @override
  ThemeExtension<CommandCenterTextTheme> copyWith({
    TextStyle? headerMediumTextStyle,
    TextStyle? headerSmallTextStyle,
    TextStyle? subtitleTextStyle,
    TextStyle? bodyMediumTextStyle,
    TextStyle? bodySmallTextStyle,
  }) {
    return CommandCenterTextTheme(
      headerMediumTextStyle:
          headerMediumTextStyle ?? this.headerMediumTextStyle,
      headerSmallTextStyle: headerSmallTextStyle ?? this.headerSmallTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
      bodyMediumTextStyle: bodyMediumTextStyle ?? this.bodyMediumTextStyle,
      bodySmallTextStyle: bodySmallTextStyle ?? this.bodySmallTextStyle,
    );
  }

  @override
  ThemeExtension<CommandCenterTextTheme> lerp(
    ThemeExtension<CommandCenterTextTheme>? other,
    double t,
  ) {
    if (other is! CommandCenterTextTheme) {
      return this;
    }
    return CommandCenterTextTheme(
      headerMediumTextStyle: TextStyle.lerp(
        headerMediumTextStyle,
        other.headerMediumTextStyle,
        t,
      ),
      headerSmallTextStyle: TextStyle.lerp(
        headerSmallTextStyle,
        other.headerSmallTextStyle,
        t,
      ),
      subtitleTextStyle: TextStyle.lerp(
        subtitleTextStyle,
        other.subtitleTextStyle,
        t,
      ),
      bodyMediumTextStyle: TextStyle.lerp(
        bodyMediumTextStyle,
        other.bodyMediumTextStyle,
        t,
      ),
      bodySmallTextStyle: TextStyle.lerp(
        bodySmallTextStyle,
        other.bodySmallTextStyle,
        t,
      ),
    );
  }

  // the light theme
  static final light = CommandCenterTextTheme(
    headerMediumTextStyle: AppTextStyles.s22fw700(
      color: AppColors.whiteFFF,
      height: 1.3,
    ),
    headerSmallTextStyle: AppTextStyles.s16fw700(
      color: AppColors.whiteFFF,
      height: 1.3,
    ),
    subtitleTextStyle: AppTextStyles.s14fw700(
      color: AppColors.whiteFFF,
      height: 1.3,
    ),
    bodyMediumTextStyle: AppTextStyles.s14fw400(
      color: AppColors.whiteFFF,
      height: 1.3,
    ),
    bodySmallTextStyle: AppTextStyles.s12fw400(
      color: AppColors.whiteFFF,
      height: 1.3,
    ),
  );

  // the dark theme
  // static const dark = CommandCenterTextTheme();
}
