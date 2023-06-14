import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/call_duration/call_duration_help_model.dart';

class CallDurationHelpData {
  static Map<Sample, CallDurationHelpModel> data = {
    Sample.sample1: const CallDurationHelpModel(
      callTime: 608,
      numberOfCalls: 19,
      chartValues: [0, 1, 0, 1, 2.5, 3, 0, 1, 2, 4, 3, 0, 0, 1, 5],
    ),
    Sample.sample2: const CallDurationHelpModel(
      callTime: 5872,
      numberOfCalls: 115,
      chartValues: [6, 8, 4, 5, 1, 0, 7, 4, 8, 1, 5, 6, 3, 8, 2],
    ),
    Sample.sample3: const CallDurationHelpModel(
      callTime: 3142,
      numberOfCalls: 68,
      chartValues: [3, 5, 8, 7, 5, 7, 3, 8, 5, 6, 0, 3, 7, 5, 7],
    ),
    Sample.sample4: const CallDurationHelpModel(
      callTime: 1789,
      numberOfCalls: 49,
      chartValues: [12, 3, 10, 15, 3, 10, 7, 9, 3, 5, 1, 8, 14, 2, 4],
    ),
  };
}
