import 'package:benchmark/src/data/helper/models/command_center/call_duration/call_duration_card/call_duration_card_help_model.dart';
import 'package:benchmark/src/data/helper/models/command_center/call_duration/call_duration_chart/call_duration_chart_help_model.dart';

class CallDurationChartData {
  static CallDurationCardHelpModel data = const CallDurationCardHelpModel(
    callTime: '10m:8s',
    numberOfCalls: 19,
    chartModel: CallDurationChartHelpModel(
      maxValue: 6,
      values: [0, 1, 0, 1, 2.5, 3, 0, 1, 2, 4, 3, 0, 0, 1, 5],
    ),
  );
}
