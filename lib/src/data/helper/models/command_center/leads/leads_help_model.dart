import 'package:freezed_annotation/freezed_annotation.dart';

part 'leads_help_model.freezed.dart';

@freezed
class LeadsHelpModel with _$LeadsHelpModel {
  const factory LeadsHelpModel({
    num? value,
    num? prevValue,
    num? maxValue,
  }) = _LeadsHelpModel;
}
