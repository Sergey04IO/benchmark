import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_ui_model.freezed.dart';

@freezed
class AreaUIModel with _$AreaUIModel {
  const factory AreaUIModel({
    String? title,
    String? unit,
    double? value,
    double? maxValue,
    @Default([]) List<double> points,
  }) = _AreaUIModel;
}
