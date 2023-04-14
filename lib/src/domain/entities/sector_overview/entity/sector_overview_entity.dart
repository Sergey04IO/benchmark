import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_overview_entity.freezed.dart';

@freezed
class SectorOverviewEntity with _$SectorOverviewEntity {
  const factory SectorOverviewEntity({
    String? title,
    num? value,
  }) = _SectorOverviewEntity;
}
