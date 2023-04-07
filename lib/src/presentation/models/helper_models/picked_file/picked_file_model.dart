import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picked_file_model.freezed.dart';

@freezed
class PickedFileModel<T> with _$PickedFileModel {
  const factory PickedFileModel({
    PlatformFile? pickedFile,
    T? file,
  }) = _PickedFileModel;
}
