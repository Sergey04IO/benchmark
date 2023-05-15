import 'package:freezed_annotation/freezed_annotation.dart';

part 'datetime_range.freezed.dart';

@freezed
class RangeModel<T> with _$RangeModel {
  const factory RangeModel({
    required T from,
    required T to,
  }) = _RangeModel;
}
