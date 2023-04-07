// ignore_for_file: unused_element

import 'package:benchmark/src/domain/entities/sector_overview/sector_overview_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_overview_model.freezed.dart';
part 'sector_overview_model.g.dart';

@freezed
class SectorOverviewModel with _$SectorOverviewModel {
  const factory SectorOverviewModel({
    String? date,
    String? title,
    String? value,
  }) = _SectorOverviewModel;

  const SectorOverviewModel._();

  factory SectorOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$SectorOverviewModelFromJson(json);

  SectorOverviewEntity toEntity() {
    return SectorOverviewEntity(
      title: title,
      value: num.tryParse(value ?? ''),
    );
  }
}
