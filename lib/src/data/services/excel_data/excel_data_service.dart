import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/domain/services/data_source_service.dart';
import 'package:collection/collection.dart';
import 'package:excel/excel.dart';
import 'package:injectable/injectable.dart';

// abstract class ExcelDataService {
//   Future<void> init({Excel? file});
//   Future<List<Map<String, String>>?> getTornadoRows();
//   Future<List<Map<String, String>>?> getAreasRows();
//   Future<List<Map<String, String>>?> getSectorsOverviewRows();
//   Future<List<Map<String, String>>?> getSectorsIndexRows();
// }

@Named('ExcelDataService')
@LazySingleton(as: DataSourceService, env: [Environment.prod])
class ExcelDataService implements DataSourceService {
  final tornadoSheetName = 'tornado';
  final areasSheetName = 'areas';
  final sectorsOverviewSheetName = 'sectors overview';
  final sectorsIndexSheetName = 'sectors index';

  Excel? _excelFile;

  @override
  Future<void> init({Excel? file}) async {
    _excelFile = file;
  }

  @override
  Future<List<Map<String, String>>?> getTornadoRows() async {
    try {
      final data = getAllRows(worksheetName: tornadoSheetName);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getAreasRows() {
    try {
      final data = getAllRows(worksheetName: areasSheetName);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getSectorsOverviewRows() {
    try {
      final data = getAllRows(worksheetName: sectorsOverviewSheetName);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getSectorsIndexRows() {
    try {
      final data = getAllRows(worksheetName: sectorsIndexSheetName);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Map<String, String>>?> getAllRows({
    required String worksheetName,
  }) async {
    try {
      if (_excelFile == null) return null;
      final List<Map<String, String>> data = [];
      final List<String> keys = [];
      final sheetName = _excelFile?.sheets.keys.firstWhereOrNull(
        (element) => element.toLowerCase() == worksheetName.toLowerCase(),
      );
      final sheet = _excelFile?.sheets[sheetName];
      if (sheet == null) return null;
      final rows = sheet.rows;
      for (int i = 0; i < rows.length; i++) {
        final Map<String, String> map = {};
        final row = rows[i];
        for (int j = 0; j < row.length; j++) {
          final cell = row[j];
          if (i == 0) {
            if (cell?.value != null) {
              keys.add(cell!.value.toString());
            }
          } else {
            map[keys[j]] = cell?.value.toString() ?? '';
          }
        }
        if (i != 0) {
          data.add(map);
        }
      }
      return data;
    } catch (e) {
      throw ApiException(
          error: '$runtimeType Exception.\nGet all Tornado rows error!\n');
    }
  }
}
