import 'package:benchmark/src/app/core/extensions/datetime_extensions.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class DateTimeUtil {
  static String getDateAndTime12H({
    DateTime? date,
    Locale? locale,
    Duration rounder = const Duration(hours: 1),
  }) {
    final input = date ?? DateTime.now();
    final value = input.roundDownToHours(delta: rounder);
    final formatter = DateFormat('MMM dd, hh:mm a', locale?.languageCode);
    final result = formatter.format(value);
    return result;
  }

  static String getFormattedDuration({
    Duration? duration,
  }) {
    final time = Duration(seconds: duration?.inSeconds ?? 0);
    final hours = '${time.inHours}h';
    final minutes = '${time.inMinutes.remainder(60)}m';
    final seconds = '${time.inSeconds.remainder(60)}s';

    return [
      if (time.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
