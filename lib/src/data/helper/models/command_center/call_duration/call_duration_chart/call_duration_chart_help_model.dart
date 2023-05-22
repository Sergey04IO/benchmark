import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_duration_chart_help_model.freezed.dart';

@freezed
class CallDurationChartHelpModel with _$CallDurationChartHelpModel {
  const factory CallDurationChartHelpModel({
    @Default([]) List<num> values,
    num? maxValue,
  }) = _CallDurationChartHelpModel;
}
