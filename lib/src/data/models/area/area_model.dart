// ignore_for_file: unused_element

import 'package:benchmark/src/data/helper/model_helper/model_helper.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_model.freezed.dart';
part 'area_model.g.dart';

@freezed
class AreaModel with _$AreaModel {
  const factory AreaModel({
    String? date,
    String? title,
    String? values,
    String? unit,
  }) = _AreaModel;

  const AreaModel._();

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);

  AreaEntity toEntity() {
    return AreaEntity(
      title: title,
      unit: unit,
      values: _getValues(),
    );
  }

  List<num> _getValues() {
    return ModelHelper.getNumsListFromString(values);
  }
}
