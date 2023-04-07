// ignore_for_file: unused_element

import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tornado_model.freezed.dart';
part 'tornado_model.g.dart';

@freezed
class TornadoModel with _$TornadoModel {
  const factory TornadoModel({
    String? date,
    String? title,
    String? unit,
    @JsonKey(name: 'date value') String? dateValue,
    @JsonKey(name: 'benchmark value') String? benchmarkValue,
  }) = _TornadoModel;

  const TornadoModel._();

  factory TornadoModel.fromJson(Map<String, dynamic> json) =>
      _$TornadoModelFromJson(json);

  TornadoEntity toEntity() {
    return TornadoEntity(
      title: title,
      unit: unit,
      dateValue: num.tryParse(dateValue ?? ''),
      benchmarkValue: num.tryParse(benchmarkValue ?? ''),
    );
  }
}
