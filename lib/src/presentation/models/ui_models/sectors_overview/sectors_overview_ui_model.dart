import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sectors_overview_ui_model.freezed.dart';

@freezed
class SectorsOverviewUIModel with _$SectorsOverviewUIModel {
  const factory SectorsOverviewUIModel({
    String? name,
    Color? color,
    num? value,
  }) = _SectorsOverviewUIModel;
}
