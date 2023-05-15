extension DateTimeExtensions on DateTime {
  DateTime roundDownToHours({
    Duration delta = const Duration(hours: 1),
  }) {
    return DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch - millisecondsSinceEpoch % delta.inMilliseconds,
    );
  }
}
