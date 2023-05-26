import 'package:easy_localization/easy_localization.dart';

class FormatUtil {
  static NumberFormat get int {
    return NumberFormat('#,###,###');
  }

  static NumberFormat get compact {
    return NumberFormat.compact();
  }

  static NumberFormat get doublePrecOne {
    return NumberFormat('#,###,##0.0');
  }

  static NumberFormat get doublePrecTwo {
    return NumberFormat('#,###,##0.00');
  }
}
