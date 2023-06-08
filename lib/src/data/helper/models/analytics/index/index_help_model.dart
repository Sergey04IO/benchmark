import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_help_model.freezed.dart';

@freezed
class IndexHelpModel with _$IndexHelpModel {
  const factory IndexHelpModel({
    String? title,
    @Default([]) List<num> barValues,
  }) = _IndexHelpModel;
}
