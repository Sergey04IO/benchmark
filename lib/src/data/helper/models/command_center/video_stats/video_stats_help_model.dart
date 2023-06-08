import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_stats_help_model.freezed.dart';

@freezed
class VideoStatsHelpModel with _$VideoStatsHelpModel {
  const factory VideoStatsHelpModel({
    num? playCount,
    num? engagement,
    num? playRate,
  }) = _VideoStatsHelpModel;
}
