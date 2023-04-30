import 'dart:convert';

import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/app/core/keys/local_keys/shared_prefs_keys.dart';
import 'package:benchmark/src/domain/services/local_storage_service.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsLocalSource {
  Future<bool> saveConfigFile(ConfigExcelFileModel file);
  Future<ConfigExcelFileModel?> getConfigFile();
  Future<bool> saveConfigDataSource(String dataSource);
  Future<String?> getConfigDataSource();
  Future<bool> clearConfigFile();
  Future<bool> clearDataSource();
}

@LazySingleton(as: SettingsLocalSource, env: [Environment.prod])
class SettingsLocalSourceImpl implements SettingsLocalSource {
  SettingsLocalSourceImpl(this._storageService);

  final LocalStorageService _storageService;

  @override
  Future<bool> saveConfigFile(ConfigExcelFileModel file) async {
    try {
      if (file.excel == null) return false;

      final encoded = jsonEncode(file.toJson());

      final result = await _storageService.saveString(
        SharedPrefsKeys.configFileKey,
        encoded,
      );
      return result;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }

  @override
  Future<ConfigExcelFileModel?> getConfigFile() async {
    try {
      final result = await _storageService.getString(
        SharedPrefsKeys.configFileKey,
      );
      if (result == null) return null;

      final Map<String, dynamic> decoded = jsonDecode(result);

      final file = ConfigExcelFileModel.fromJson(decoded);
      return file;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }

  @override
  Future<bool> saveConfigDataSource(String dataSource) async {
    try {
      final result = await _storageService.saveString(
        SharedPrefsKeys.configDataSourceKey,
        dataSource,
      );
      return result;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }

  @override
  Future<String?> getConfigDataSource() async {
    try {
      final result = await _storageService.getString(
        SharedPrefsKeys.configDataSourceKey,
      );
      return result;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }

  @override
  Future<bool> clearConfigFile() async {
    try {
      final result = await _storageService.removeKey(
        SharedPrefsKeys.configFileKey,
      );
      return result;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }

  @override
  Future<bool> clearDataSource() async {
    try {
      final result = await _storageService.removeKey(
        SharedPrefsKeys.configDataSourceKey,
      );
      return result;
    } catch (e) {
      throw CacheException(error: '$e');
    }
  }
}
