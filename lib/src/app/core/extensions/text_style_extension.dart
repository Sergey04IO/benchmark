import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle withColor(Color? color) {
    return copyWith(color: color);
  }

  TextStyle withOpacity(double opacity) {
    return copyWith(color: color?.withOpacity(opacity));
  }

  TextStyle withFontWeight(FontWeight fontWeight) {
    return copyWith(fontWeight: fontWeight);
  }

  TextStyle withCommonFontWeight() {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle withBoldFontWeight() {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle withMinHeight() {
    return copyWith(height: 1);
  }
}
