import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/data/sources/local/settings/settings_local_source.dart';
import 'package:benchmark/src/domain/repositories/settings_repository.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SettingsRepository, env: [Environment.prod])
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._localSource);

  final SettingsLocalSource _localSource;

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
}
