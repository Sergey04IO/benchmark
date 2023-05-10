import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/errors/failures.dart';
import 'package:benchmark/src/data/models/area/area_model.dart';
import 'package:benchmark/src/data/models/sector_index/sector_index_model.dart';
import 'package:benchmark/src/data/models/sector_overview/sector_overview_model.dart';
import 'package:benchmark/src/data/models/tornado/tornado_model.dart';
import 'package:benchmark/src/data/services/excel_data_service.dart';
import 'package:benchmark/src/data/services/gsheets_service.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/cluster/sector_overview_cluster.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/domain/repositories/analytics_repository.dart';
import 'package:benchmark/src/domain/repositories/base/base_repository.dart';
import 'package:benchmark/src/domain/services/data_source_service.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:excel/excel.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnalyticsRepository, env: [Environment.prod])
class AnalyticsRepositoryImpl extends BaseRepository
    implements AnalyticsRepository {
  AnalyticsRepositoryImpl(
    @Named.from(GsheetsService) this._gsheetsService,
    @Named.from(ExcelDataService) this._excelDataService,
  );

  final DataSourceService _gsheetsService;
  final DataSourceService _excelDataService;

  DataSourceService? _service;

  @override
  Future<void> init(ConfigDataSource dataSource, {Excel? excelFile}) async {
    if (dataSource.isGsheets) {
      _service = _gsheetsService;
      await _service?.init();
    } else {
      _service = _excelDataService;
      // Without the line below (Gsheets Service initialization) somehow the app freezes for a while changing to Gseets source in config page if initial source was local xlsx file.
      await _gsheetsService.init();
      await _service?.init(file: excelFile);
    }
  }

  @override
  Future<Either<Failure, Map<String, List<TornadoEntity>>>>
      getTornadoData() async {
    try {
      const emptyDataFailure =
          EmptyDataFailure(message: 'Tornado data is Empty');

      final rows = await _service?.getTornadoRows();
      if (rows == null) return const Left(emptyDataFailure);

      final grouped = _groupBy(rows);
      if (grouped == null) return const Left(emptyDataFailure);

      final entities = grouped.map<String, List<TornadoEntity>>(
        (key, value) {
          final entities = value
              .map(TornadoModel.fromJson)
              .map((model) => model.toEntity())
              .toList();
          return MapEntry(key, entities);
        },
      );
      return Right(entities);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }

  @override
  Future<Either<Failure, Map<String, List<AreaEntity>>>> getAreasData() async {
    try {
      const emptyDataFailure = EmptyDataFailure(message: 'Areas data is Empty');

      final rows = await _service?.getAreasRows();
      if (rows == null) return const Left(emptyDataFailure);

      final grouped = _groupBy(rows);
      if (grouped == null) return const Left(emptyDataFailure);

      final entities = grouped.map<String, List<AreaEntity>>(
        (key, value) {
          final entities = value
              .map(AreaModel.fromJson)
              .map((model) => model.toEntity())
              .toList();
          return MapEntry(key, entities);
        },
      );
      return Right(entities);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }

  @override
  Future<Either<Failure, Map<String, SectorOverviewCluster>>>
      getSectorsOverviewData() async {
    try {
      const emptyDataFailure =
          EmptyDataFailure(message: 'Sectors overview data is Empty');

      final rows = await _service?.getSectorsOverviewRows();
      if (rows == null) return const Left(emptyDataFailure);

      final grouped = _groupBy(rows);
      if (grouped == null) return const Left(emptyDataFailure);

      final models = grouped.map<String, SectorOverviewCluster>(
        (key, value) {
          final entities = value
              .map(SectorOverviewModel.fromJson)
              .map((model) => model.toEntity())
              .toList();
          final avgValue = value.firstWhereOrNull(
            (element) => element.containsKey('average'),
          )?['average'];
          final cluster = SectorOverviewCluster(
            entities: entities,
            averageValue: num.tryParse(avgValue ?? ''),
          );
          return MapEntry(key, cluster);
        },
      );
      return Right(models);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }

  @override
  Future<Either<Failure, Map<String, List<SectorIndexEntity>>>>
      getSectorsIndexData() async {
    try {
      const emptyDataFailure =
          EmptyDataFailure(message: 'Sectors overview data is Empty');

      final rows = await _service?.getSectorsIndexRows();
      if (rows == null) return const Left(emptyDataFailure);

      final grouped = _groupBy(rows);
      if (grouped == null) return const Left(emptyDataFailure);

      final entities = grouped.map<String, List<SectorIndexEntity>>(
        (key, value) {
          final entities = value
              .map(SectorIndexModel.fromJson)
              .map((model) => model.toEntity())
              .toList();
          return MapEntry(key, entities);
        },
      );
      return Right(entities);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }

  Map<String, List<Map<String, String>>>? _groupBy(
    List<Map<String, String>> rows, {
    String key = 'date',
  }) {
    final List<Map<String, String>> mappedRows = [];
    String prevDate = '';
    for (final row in rows) {
      if (!row.containsKey(key)) return null;
      if (row[key] == '') {
        row[key] = prevDate;
      }
      prevDate = row[key] ?? '';
      mappedRows.add(row);
    }
    final grouped =
        mappedRows.groupListsBy<String>((element) => element[key] ?? '');
    return grouped;
  }
}
