import 'package:freezed_annotation/freezed_annotation.dart';

part 'tornado_help_model.freezed.dart';

@freezed
class TornadoHelpModel with _$TornadoHelpModel {
  const factory TornadoHelpModel({
    String? name,
    double? currentValue,
    double? comparableValue,
    double? maxWidth,
    String? unit,
  }) = _TornadoHelpModel;
}
