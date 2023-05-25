import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle withColor(Color? color) {
    return copyWith(color: color);
  }

  TextStyle withOpacity(double opacity) {
    return copyWith(color: color?.withOpacity(opacity));
  }

  TextStyle grey0A4() => withColor(AppColors.grey0A4);

  TextStyle withFontWeight(FontWeight fontWeight) {
    return copyWith(fontWeight: fontWeight);
  }

  TextStyle withCommonFontWeight() {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle withBoldFontWeight() {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle fontWeight400() => withFontWeight(FontWeight.w400);
}
