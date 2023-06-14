import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/cac/cac_help_model.dart';

class CacHelpData {
  static Map<Sample, CacHelpModel> data = {
    Sample.sample1: const CacHelpModel(
      value: 15085,
      prevValue: 21548,
      duration: 30,
    ),
    Sample.sample2: const CacHelpModel(
      value: 8762,
      prevValue: 6529,
      duration: 30,
    ),
    Sample.sample3: const CacHelpModel(
      value: 36789,
      prevValue: 25877,
      duration: 30,
    ),
    Sample.sample4: const CacHelpModel(
      value: 67928,
      prevValue: 50091,
      duration: 30,
    ),
  };
}
