import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/leads/leads_help_model.dart';

class LeadsHelpData {
  static Map<Sample, LeadsHelpModel> data = {
    Sample.sample1: const LeadsHelpModel(
      value: 10753,
      prevValue: 8961,
      maxValue: 12903,
    ),
    Sample.sample2: const LeadsHelpModel(
      value: 35982,
      prevValue: 54200,
      maxValue: 90872,
    ),
    Sample.sample3: const LeadsHelpModel(
      value: 14550,
      prevValue: 6300,
      maxValue: 46900,
    ),
  };
}
