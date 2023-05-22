import 'package:benchmark/src/data/helper/models/command_center/call_duration/call_duration_chart/call_duration_chart_help_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_duration_card_help_model.freezed.dart';

@freezed
class CallDurationCardHelpModel with _$CallDurationCardHelpModel {
  const factory CallDurationCardHelpModel({
    CallDurationChartHelpModel? chartModel,
    String? callTime,
    int? numberOfCalls,
  }) = _CallDurationCardHelpModel;
}
