import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/transitions/no_transitions_builder.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/colors/command_center_color_theme.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get baseTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: _getTransitionsBuilders(),
      ),
    );
  }

  static ThemeData get light {
    return baseTheme.copyWith(extensions: [
      CommandCenterTextTheme.light,
      CommandCenterColorTheme.light,
    ]);
  }

  static ThemeData get dark {
    return baseTheme.copyWith();
  }

  static Map<TargetPlatform, PageTransitionsBuilder> _getTransitionsBuilders() {
    if (kIsWeb) {
      return {
        for (final platform in TargetPlatform.values)
          platform: const NoTransitionsBuilder(),
      };
    }
    return {
      TargetPlatform.iOS: const NoShadowCupertinoPageTransitionsBuilder(),
      TargetPlatform.android: const FadeUpwardsPageTransitionsBuilder(),
    };
  }
}
