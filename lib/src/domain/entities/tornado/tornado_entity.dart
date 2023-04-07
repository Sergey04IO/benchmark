import 'package:freezed_annotation/freezed_annotation.dart';

part 'tornado_entity.freezed.dart';

@freezed
class TornadoEntity with _$TornadoEntity {
  const factory TornadoEntity({
    String? title,
    String? unit,
    num? dateValue,
    num? benchmarkValue,
  }) = _TornadoEntity;
}
