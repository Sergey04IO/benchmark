import 'package:benchmark/src/app/core/utils/numbers_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cac_help_model.freezed.dart';

@freezed
class CacHelpModel with _$CacHelpModel {
  const factory CacHelpModel({
    num? value,
    num? prevValue,
    int? duration,
  }) = _CacHelpModel;

  const CacHelpModel._();

  double getPercent() {
    if (value == null || prevValue == null) {
      return 0;
    }

    final result = NumbersUtil.getTwoNumbersPercent(value!, prevValue!);
    return result;
  }
}
