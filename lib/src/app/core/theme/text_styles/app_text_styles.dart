import 'package:flutter/material.dart';

class AppTextStyles {
  /// Example: s10fw500 - fontSize 10.0 & fontWidth 500

  static TextStyle s32fw700({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s22fw700({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s16fw700({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s14fw700({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s14fw400({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s12fw400({
    Color? color,
    double height = 1.0,
  }) {
    return TextStyle(
      color: color,
      height: height,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }
}
