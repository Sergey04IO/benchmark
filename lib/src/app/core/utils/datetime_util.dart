import 'package:benchmark/src/app/core/extensions/datetime_extensions.dart';
import 'package:intl/intl.dart';

class DateTimeUtil {
  static String getDateAndTime12H({
    DateTime? date,
    String? locale,
    Duration rounder = const Duration(hours: 1),
  }) {
    final input = date ?? DateTime.now();
    final value = input.roundDownToHours(delta: rounder);
    final formatter = DateFormat('MMM dd, hh:mm a', locale);
    final result = formatter.format(value);
    return result;
  }
}
