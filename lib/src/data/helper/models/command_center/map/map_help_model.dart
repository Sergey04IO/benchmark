import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_help_model.freezed.dart';

@freezed
class MapHelpModel with _$MapHelpModel {
  const factory MapHelpModel({
    @Default([]) List<MapItemModel> items,
  }) = _MapHelpModel;
}

@freezed
class MapItemModel with _$MapItemModel {
  const factory MapItemModel({
    required String countryName,
    @Default(0) int accounts,
  }) = _MapItemModel;
}
