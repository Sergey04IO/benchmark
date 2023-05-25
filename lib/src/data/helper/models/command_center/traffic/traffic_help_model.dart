import 'package:benchmark/src/app/core/utils/numbers_util.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'traffic_help_model.freezed.dart';

@freezed
class TrafficHelpModel with _$TrafficHelpModel {
  const factory TrafficHelpModel({
    TrafficDataHelpModel? advertising,
    TrafficDataHelpModel? session,
  }) = _TrafficHelpModel;
}

@freezed
class TrafficDataHelpModel with _$TrafficDataHelpModel {
  const factory TrafficDataHelpModel({
    num? value,
    num? prevValue,
    @Default([]) List<num> chartValues,
  }) = _TrafficDataHelpModel;

  const TrafficDataHelpModel._();

  double getChartMaxExtent() {
    final max = chartValues.isNotEmpty ? chartValues.max : 0;
    final result = NumbersUtil.getRandomFrom(max);
    return result;
  }

  double getPercent() {
    if (value == null || prevValue == null) {
      return 0;
    }

    final result = NumbersUtil.getTwoNumbersPercent(value!, prevValue!);
    return result;
  }
}
