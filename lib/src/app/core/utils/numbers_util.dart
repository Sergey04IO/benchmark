import 'dart:math';

import 'package:benchmark/src/app/core/extensions/random_extensions.dart';

class NumbersUtil {
  static double getRandomFrom(
    num value, {
    double maxCoef = 1.3,
  }) {
    final result = Random().doubleInRange(start: value, end: value * maxCoef);
    return result;
  }

  static double getTwoNumbersPercent(
    num current,
    num previous,
  ) {
    final result = ((current - previous) / previous) * 100;
    return result;
  }
}
