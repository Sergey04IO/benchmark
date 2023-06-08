import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sectors_overview_help_model.freezed.dart';

@freezed
class SectorsOverviewHelpModel with _$SectorsOverviewHelpModel {
  const factory SectorsOverviewHelpModel({
    String? name,
    Color? color,
    num? value,
  }) = _SectorsOverviewHelpModel;
}
