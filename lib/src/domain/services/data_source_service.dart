import 'package:excel/excel.dart';

abstract class DataSourceService {
  Future<void> init({Excel? file});
  Future<List<Map<String, String>>?> getTornadoRows();
  Future<List<Map<String, String>>?> getAreasRows();
  Future<List<Map<String, String>>?> getSectorsOverviewRows();
  Future<List<Map<String, String>>?> getSectorsIndexRows();
}
