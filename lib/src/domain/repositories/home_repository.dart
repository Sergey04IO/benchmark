import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/errors/failures.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/cluster/sector_overview_cluster.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:excel/excel.dart';

abstract class HomeRepository {
  Future<void> init(ConfigDataSource dataSource, {Excel? excelFile});
  Future<Either<Failure, Map<String, List<TornadoEntity>>>> getTornadoData();
  Future<Either<Failure, Map<String, List<AreaEntity>>>> getAreasData();
  Future<Either<Failure, Map<String, SectorOverviewCluster>>>
      getSectorsOverviewData();
  Future<Either<Failure, Map<String, List<SectorIndexEntity>>>>
      getSectorsIndexData();
}
