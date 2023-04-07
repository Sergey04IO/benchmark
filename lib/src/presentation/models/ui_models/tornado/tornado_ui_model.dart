import 'package:freezed_annotation/freezed_annotation.dart';

part 'tornado_ui_model.freezed.dart';

@freezed
class TornadoUIModel with _$TornadoUIModel {
  const factory TornadoUIModel({
    String? name,
    double? currentValue,
    double? comparableValue,
    double? maxWidth,
    String? unit,
  }) = _TornadoUIModel;
}
