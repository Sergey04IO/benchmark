import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'demographics_help_model.freezed.dart';

@freezed
class DemographicsHelpModel with _$DemographicsHelpModel {
  const factory DemographicsHelpModel({
    @Default([]) List<DemographicsClusterHelpModel> clusters,
  }) = _DemographicsHelpModel;
}

@freezed
class DemographicsClusterHelpModel with _$DemographicsClusterHelpModel {
  const factory DemographicsClusterHelpModel({
    String? name,
    Color? color,
    @Default([]) List<DemographicsItemHelpModel> items,
  }) = _DemographicsClusterHelpModel;
}

@freezed
class DemographicsItemHelpModel with _$DemographicsItemHelpModel {
  const factory DemographicsItemHelpModel({
    String? category,
    num? value,
  }) = _DemographicsItemHelpModel;
}
