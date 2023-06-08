import 'package:freezed_annotation/freezed_annotation.dart';

part 'followers_help_model.freezed.dart';

@freezed
class FollowersHelpModel with _$FollowersHelpModel {
  const factory FollowersHelpModel({
    int? facebook,
    int? youtube,
    int? instagram,
    int? googlePlus,
    int? twitter,
    int? linkedIn,
  }) = _FollowersHelpModel;
}
