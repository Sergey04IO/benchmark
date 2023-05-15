import 'dart:io';

import 'package:benchmark/src/app/core/enums/pick_file_type.dart';
import 'package:benchmark/src/presentation/models/helper_models/picked_file/picked_file_model.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class FilePickerHelper {
  static Future<PickedFileModel?> pickFile({
    PickFileType type = PickFileType.any,
  }) async {
    final picked = await _pickFile(type);
    final pickedFile = picked?.files.single;
    if (pickedFile == null) return null;
    final bytes = await _handleFile(pickedFile);
    if (bytes == null) return null;
    if (type.isExcel) {
      final excel = Excel.decodeBytes(bytes);
      final model = PickedFileModel(
        pickedFile: pickedFile,
        file: excel,
      );
      return model;
    }
    final file = File.fromRawPath(bytes);
    final model = PickedFileModel(
      pickedFile: pickedFile,
      file: file,
    );
    return model;
  }

  static Future<FilePickerResult?> _pickFile(PickFileType type) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: type.isAny ? FileType.any : FileType.custom,
      allowedExtensions: _getExtensions(type),
    );
    return result;
  }

  static List<String>? _getExtensions(PickFileType type) {
    List<String>? data;
    switch (type) {
      case PickFileType.excel:
        data = ['xls', 'xlsx'];
        break;
      default:
        data = null;
        break;
    }
    return data;
  }

  static Future<Uint8List?> _handleFile(PlatformFile file) async {
    Uint8List? bytes;
    if (kIsWeb) {
      bytes = file.bytes;
    } else {
      final path = file.path;
      if (path != null) {
        bytes = await File(path).readAsBytes();
      }
    }
    return bytes;
  }
}
