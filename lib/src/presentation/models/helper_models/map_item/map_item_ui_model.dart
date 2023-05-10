import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_item_ui_model.freezed.dart';

@freezed
class MapItemUIModel with _$MapItemUIModel {
  const factory MapItemUIModel({
    required String countryName,
    @Default(0) int accounts,
  }) = _MapItemUIModel;
}
