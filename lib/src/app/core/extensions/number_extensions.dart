extension DoubleExtension on double {
  double roundTo({double rounder = 10}) {
    final max = this;
    final x = max / rounder;
    final result = x.ceil() * rounder;
    return result;
  }
}

extension IntExtension on int {
  int roundTo({int rounder = 10}) {
    final max = this;
    final x = max / rounder;
    final result = x.ceil() * rounder;
    return result;
  }
}
