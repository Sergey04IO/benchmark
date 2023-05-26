import 'package:flutter/widgets.dart';

class WidgetsHelper {
  static Size getTextSize(
    BuildContext context, {
    required String text,
    required TextStyle style,
  }) {
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: Directionality.of(context),
      textScaleFactor: textScaleFactor,
    )..layout();

    return textPainter.size;
  }
}
