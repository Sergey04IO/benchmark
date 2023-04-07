import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_entity.freezed.dart';

@freezed
class AreaEntity with _$AreaEntity {
  const factory AreaEntity({
    String? title,
    @Default([]) List<num> values,
    String? unit,
  }) = _AreaEntity;
}
