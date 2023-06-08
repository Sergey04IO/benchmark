import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_help_model.freezed.dart';

@freezed
class AreaHelpModel with _$AreaHelpModel {
  const factory AreaHelpModel({
    String? title,
    String? unit,
    double? value,
    double? maxValue,
    @Default([]) List<double> points,
  }) = _AreaHelpModel;
}
