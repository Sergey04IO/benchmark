import 'dart:math';

extension RandomExtension on Random {
  double doubleInRange({
    num start = 0,
    num end = 1,
  }) =>
      Random().nextDouble() * (end - start) + start;
}
