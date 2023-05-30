import 'package:freezed_annotation/freezed_annotation.dart';

part 'views_per_user_help_model.freezed.dart';

@freezed
class ViewsPerUserHelpModel with _$ViewsPerUserHelpModel {
  const factory ViewsPerUserHelpModel({
    DateTime? date,
    double? amazingClips,
    double? goodClips,
    double? clipstore,
  }) = _ViewsPerUserHelpModel;
}
