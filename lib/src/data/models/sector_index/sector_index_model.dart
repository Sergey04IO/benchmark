import 'package:benchmark/src/data/helper/model_helper/model_helper.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_index_model.freezed.dart';
part 'sector_index_model.g.dart';

@freezed
class SectorIndexModel with _$SectorIndexModel {
  const factory SectorIndexModel({
    String? date,
    String? title,
    String? values,
    String? total,
    String? difference,
  }) = _SectorIndexModel;

  const SectorIndexModel._();

  factory SectorIndexModel.fromJson(Map<String, dynamic> json) =>
      _$SectorIndexModelFromJson(json);

  SectorIndexEntity toEntity() {
    return SectorIndexEntity(
      title: title,
      values: _getValues(),
      total: num.tryParse(total ?? ''),
      difference: num.tryParse(difference ?? ''),
    );
  }

  List<num> _getValues() {
    return ModelHelper.getNumsListFromString(values);
  }
}
