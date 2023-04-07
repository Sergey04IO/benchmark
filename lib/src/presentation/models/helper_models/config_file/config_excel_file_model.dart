import 'package:excel/excel.dart';

class ConfigExcelFileModel {
  ConfigExcelFileModel({
    this.excel,
    this.name,
    this.extension,
    this.size,
  });

  factory ConfigExcelFileModel.fromJson(Map<String, dynamic> json) {
    List<int>? bytes;
    if (json['excel'] != null) {
      bytes = List<int>.from(json['excel']);
    }
    return ConfigExcelFileModel(
      excel: bytes != null ? Excel.decodeBytes(bytes) : null,
      name: json['name'],
      extension: json['extension'],
      size: json['size'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'excel': excel?.encode(),
      'name': name,
      'extension': extension,
      'size': size,
    };
  }

  ConfigExcelFileModel copyWith({
    Excel? excel,
    String? name,
    String? extension,
    int? size,
  }) {
    return ConfigExcelFileModel(
      excel: excel ?? this.excel,
      name: name ?? this.name,
      extension: extension ?? this.extension,
      size: size ?? this.size,
    );
  }

  final Excel? excel;
  final String? name;
  final String? extension;
  final int? size;
}
