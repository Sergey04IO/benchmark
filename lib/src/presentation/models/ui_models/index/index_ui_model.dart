import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_ui_model.freezed.dart';

@freezed
class IndexUIModel with _$IndexUIModel {
  const factory IndexUIModel({
    String? title,
    @Default([]) List<num> barValues,
  }) = _IndexUIModel;
}
