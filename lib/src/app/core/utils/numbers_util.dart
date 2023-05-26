import 'dart:math';

import 'package:benchmark/src/app/core/extensions/random_extensions.dart';
import 'package:benchmark/src/presentation/models/helper_models/extremum/extremum.dart';

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

  static double convertValueByRange({
    num? value,
    Extremum oldRange = Extremum.zero,
    Extremum newRange = Extremum.zero,
  }) {
    if (value == null) return 0;

    final oldDiff = oldRange.diff() == 0 ? 1 : oldRange.diff();
    final newDiff = newRange.diff();
    final converted =
        (((value - oldRange.min) * newDiff) / oldDiff) + newRange.min;
    return converted;
  }
}
