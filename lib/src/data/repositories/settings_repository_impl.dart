import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/data/models/app_settings/app_settings_model.dart';
import 'package:benchmark/src/data/sources/local/settings/settings_local_source.dart';
import 'package:benchmark/src/domain/entities/app_settings/app_settings_entity.dart';
import 'package:benchmark/src/domain/repositories/settings_repository.dart';
import 'package:benchmark/src/domain/services/firebase_remote_config_service.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SettingsRepository, env: [Environment.prod])
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(
    this._localSource,
    this._firebaseRemoteConfigService,
  );

  final SettingsLocalSource _localSource;
  final FirebaseRemoteConfigService _firebaseRemoteConfigService;

  @override
  Future<void> saveConfigFile(ConfigExcelFileModel? file) async {
    try {
      if (file == null || file.excel == null) {
        await _localSource.clearConfigFile();
        return;
      }
      final result = await _localSource.saveConfigFile(file);
      if (!result) {
        throw const CacheException(error: 'Could not save config file');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ConfigExcelFileModel?> getConfigFile() async {
    try {
      final file = await _localSource.getConfigFile();
      return file;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveConfigDataSource(ConfigDataSource? dataSource) async {
    try {
      if (dataSource == null) {
        await _localSource.clearDataSource();
        return;
      }
      final result = await _localSource.saveConfigDataSource(dataSource.name);
      if (!result) {
        throw const CacheException(error: 'Could not save config data source');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ConfigDataSource?> getConfigDataSource() async {
    try {
      final source = await _localSource.getConfigDataSource();
      if (source == null) return null;
      final result = ConfigDataSource.values.byName(source);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> firebaseRemoteConfigInit() async {
    try {
      await _firebaseRemoteConfigService.init();
    } catch (e) {
      rethrow;
    }
  }

  @override
  AppSettingsEntity? getAppSettings() {
    try {
      final data = _firebaseRemoteConfigService.getSettings();
      if (data == null) return null;
      final settings = AppSettingsModel.fromJson(data);
      return settings.toEntity();
    } catch (e) {
      rethrow;
    }
  }
}
