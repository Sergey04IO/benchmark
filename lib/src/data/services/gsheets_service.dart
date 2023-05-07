import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/app/core/keys/api_keys/gsheets_api_keys.dart';
import 'package:benchmark/src/data/services/connectivity_service.dart';
import 'package:benchmark/src/domain/services/data_source_service.dart';
import 'package:collection/collection.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:injectable/injectable.dart';

@Named('GsheetsService')
@LazySingleton(as: DataSourceService, env: [Environment.prod])
class GsheetsService implements DataSourceService {
  GsheetsService(this._connectivityService);

  final ConnectivityService _connectivityService;

  final _credentials = GsheetsApiKeys.credentials;
  final _spreadsheetId = GsheetsApiKeys.spreadsheetId;
  GSheets? _gsheets;
  Spreadsheet? _spreadsheet;
  final List<Worksheet> _worksheets = [];

  bool _isInitialized = false;

  @override
  Future<void> init({Excel? file}) async {
    try {
      final hasInternet = await _connectivityService.hasInternet();
      if (_isInitialized || !hasInternet) return;
      _gsheets = GSheets(_credentials);
      _spreadsheet = await _gsheets?.spreadsheet(_spreadsheetId);
      final worksheets = _getWorksheets();
      _worksheets.addAll(worksheets);
      _isInitialized = true;
    } catch (e) {
      debugPrint('$this Exception.\nInitialization error!\n$e');
    }
  }

  List<Worksheet> _getWorksheets() {
    try {
      final List<Worksheet> worksheets = [];
      Worksheet? currentWorksheet;
      int index = 0;
      do {
        final worksheet = _spreadsheet?.worksheetByIndex(index);
        currentWorksheet = worksheet;
        if (worksheet == null) break;
        worksheets.add(worksheet);
        index++;
      } while (currentWorksheet != null);
      return worksheets;
    } catch (e) {
      debugPrint('$this Exception.\nGet Worksheets error!\n$e');
      return [];
    }
  }

  @override
  Future<List<Map<String, String>>?> getTornadoRows() async {
    try {
      final data = await _getAllRows(
        GsheetsApiKeys.tornadoWorksheetId,
        sourceName: 'tornado',
      );
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getAreasRows() async {
    try {
      final data = await _getAllRows(
        GsheetsApiKeys.areasWorksheetId,
        sourceName: 'Areas',
      );
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getSectorsOverviewRows() async {
    try {
      final data = await _getAllRows(
        GsheetsApiKeys.sectorsOverviewWorksheetId,
        sourceName: 'Sectors overview',
      );
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Map<String, String>>?> getSectorsIndexRows() async {
    try {
      final data = await _getAllRows(
        GsheetsApiKeys.sectorsIndexWorksheetId,
        sourceName: 'Sectors index',
      );
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Map<String, String>>?> _getAllRows(
    String worksheetId, {
    String? sourceName,
  }) async {
    try {
      final worksheet = _worksheets
          .firstWhereOrNull((element) => element.id.toString() == worksheetId);
      final data = await worksheet?.values.map.allRows();
      return data;
    } catch (e) {
      debugPrint('$this Exception.\nGet all $sourceName rows error!\n$e');
      throw ApiException(
          error: '$this Exception.\nGet all $sourceName rows error!\n$e');
    }
  }
}
