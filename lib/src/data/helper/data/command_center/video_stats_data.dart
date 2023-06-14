import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/video_stats/video_stats_help_model.dart';

class VideoStatsHelpData {
  static Map<Sample, VideoStatsHelpModel> data = {
    Sample.sample1: const VideoStatsHelpModel(
      playCount: 563,
      engagement: 75,
      playRate: 49,
    ),
    Sample.sample2: const VideoStatsHelpModel(
      playCount: 4200,
      engagement: 25,
      playRate: 12,
    ),
    Sample.sample3: const VideoStatsHelpModel(
      playCount: 5700,
      engagement: 53,
      playRate: 37,
    ),
    Sample.sample4: const VideoStatsHelpModel(
      playCount: 8340,
      engagement: 88,
      playRate: 74,
    ),
  };
}
