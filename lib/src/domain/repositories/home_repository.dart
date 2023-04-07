import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/sector_overview_entity.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:excel/excel.dart';

abstract class HomeRepository {
  Future<void> init(ConfigDataSource dataSource, {Excel? excelFile});
  Future<Map<String, List<TornadoEntity>>?> getTornadoData();
  Future<Map<String, List<AreaEntity>>?> getAreasData();
  Future<Map<String, List<SectorOverviewEntity>>?> getSectorsOverviewData();
  Future<Map<String, List<SectorIndexEntity>>?> getSectorsIndexData();
}
