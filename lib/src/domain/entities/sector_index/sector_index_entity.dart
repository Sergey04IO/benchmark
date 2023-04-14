import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_index_entity.freezed.dart';

@freezed
class SectorIndexEntity with _$SectorIndexEntity {
  const factory SectorIndexEntity({
    String? title,
    @Default([]) List<num> values,
    num? total,
    num? difference,
  }) = _SectorIndexEntity;
}
