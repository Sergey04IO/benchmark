import 'package:benchmark/src/app/core/utils/numbers_util.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_duration_help_model.freezed.dart';

@freezed
class CallDurationHelpModel with _$CallDurationHelpModel {
  const factory CallDurationHelpModel({
    @Default([]) List<num> chartValues,
    // in seconds
    int? callTime,
    int? numberOfCalls,
  }) = _CallDurationHelpModel;

  const CallDurationHelpModel._();

  double getChartMaxExtent() {
    final max = chartValues.isNotEmpty ? chartValues.max : 0;
    final result = NumbersUtil.getRandomFrom(max);
    return result;
  }
}
