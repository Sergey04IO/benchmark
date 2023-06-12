import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/followers/followers_help_model.dart';

class FollowersHelpData {
  static Map<Sample, FollowersHelpModel> data = {
    Sample.sample1: const FollowersHelpModel(
      facebook: 26472,
      youtube: 13911,
      instagram: 6524,
      googlePlus: 5093,
      twitter: 45322,
      linkedIn: 1765,
    ),
    Sample.sample2: const FollowersHelpModel(
      facebook: 523000,
      youtube: 1502514,
      instagram: 356987,
      googlePlus: 15239,
      twitter: 152751,
      linkedIn: 21400,
    ),
    Sample.sample3: const FollowersHelpModel(
      facebook: 159862,
      youtube: 580777,
      instagram: 76990,
      googlePlus: 10000,
      twitter: 87300,
      linkedIn: 12150,
    ),
  };
}
