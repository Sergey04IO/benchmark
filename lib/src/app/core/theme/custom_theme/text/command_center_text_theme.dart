import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CommandCenterTextTheme extends ThemeExtension<CommandCenterTextTheme> {
  const CommandCenterTextTheme({
    required this.cardHeaderTextStyle,
    required this.cardFooterTextStyle,
  });

  final TextStyle? cardHeaderTextStyle;
  final TextStyle? cardFooterTextStyle;

  static CommandCenterTextTheme? of(BuildContext context) {
    return Theme.of(context).extension<CommandCenterTextTheme>();
  }

  @override
  ThemeExtension<CommandCenterTextTheme> copyWith({
    TextStyle? cardHeaderTextStyle,
    TextStyle? cardFooterTextStyle,
  }) {
    return CommandCenterTextTheme(
      cardHeaderTextStyle: cardHeaderTextStyle ?? this.cardHeaderTextStyle,
      cardFooterTextStyle: cardFooterTextStyle ?? this.cardFooterTextStyle,
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
      cardHeaderTextStyle: TextStyle.lerp(
        cardHeaderTextStyle,
        other.cardHeaderTextStyle,
        t,
      ),
      cardFooterTextStyle: TextStyle.lerp(
        cardFooterTextStyle,
        other.cardFooterTextStyle,
        t,
      ),
    );
  }

  // the light theme
  static final light = CommandCenterTextTheme(
    cardHeaderTextStyle: AppTextStyles.s16fw700(color: AppColors.whiteFFF),
    cardFooterTextStyle: AppTextStyles.s12fw400(color: AppColors.greyE6E),
  );

  // the dark theme
  // static const dark = CommandCenterTextTheme();
}
