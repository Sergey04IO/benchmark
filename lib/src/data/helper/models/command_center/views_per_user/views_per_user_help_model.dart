import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'views_per_user_help_model.freezed.dart';

// @freezed
// class ViewsPerUserHelpModel with _$ViewsPerUserHelpModel {
//   const factory ViewsPerUserHelpModel({
//     DateTime? date,
//     double? amazingClips,
//     double? goodClips,
//     double? clipstore,
//   }) = _ViewsPerUserHelpModel;
// }
@freezed
class ViewsPerUserHelpModel with _$ViewsPerUserHelpModel {
  const factory ViewsPerUserHelpModel({
    @Default([]) List<ViewsPerUserClusterModel> clusters,
  }) = _ViewsPerUserHelpModel;
}

@freezed
class ViewsPerUserClusterModel with _$ViewsPerUserClusterModel {
  const factory ViewsPerUserClusterModel({
    String? name,
    Color? color,
    @Default([]) List<ViewsPerUserItemModel> items,
  }) = _ViewsPerUserClusterModel;

  const ViewsPerUserClusterModel._();

  double getMaxValue() {
    if (items.isEmpty) return 0.0;
    final max = items
        .reduce((curr, next) => curr.value! > next.value! ? curr : next)
        .value;
    return max ?? 0.0;
  }
}

@freezed
class ViewsPerUserItemModel with _$ViewsPerUserItemModel {
  const factory ViewsPerUserItemModel({
    double? value,
  }) = _ViewsPerUserItemModel;
}
