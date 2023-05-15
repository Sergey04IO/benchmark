import 'package:benchmark/src/app/core/enums/number_format_type.dart';
import 'package:easy_localization/easy_localization.dart';

class FormatUtil {
  static NumberFormat getNumberFormat({
    NumberFormatType type = NumberFormatType.int,
  }) {
    switch (type) {
      case NumberFormatType.int:
        return NumberFormat('#,###,###');
      case NumberFormatType.compact:
        return NumberFormat.compact();
      case NumberFormatType.doublePrecOne:
        return NumberFormat('#,###,##0.0');
      case NumberFormatType.doublePrecTwo:
        return NumberFormat('#,###,##0.00');
      default:
        return NumberFormat();
    }
  }
}
