import 'package:freezed_annotation/freezed_annotation.dart';

part 'extremum.freezed.dart';

@freezed
class Extremum with _$Extremum {
  const factory Extremum({
    @Default(0) num min,
    @Default(0) num max,
  }) = _Extremum;

  const Extremum._();

  static const Extremum zero = Extremum(min: 0.0, max: 0.0);

  num diff() {
    return max - min;
  }
}
