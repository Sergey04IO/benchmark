import 'package:freezed_annotation/freezed_annotation.dart';

part 'demographics_help_model.freezed.dart';

@freezed
class DemographicsHelpModel with _$DemographicsHelpModel {
  const factory DemographicsHelpModel({
    String? category,
    num? male,
    num? female,
    num? unspecified,
  }) = _DemographicsHelpModel;
}
