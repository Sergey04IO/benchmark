import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';

abstract class SettingsRepository {
  Future<void> saveConfigFile(ConfigExcelFileModel? file);
  Future<ConfigExcelFileModel?> getConfigFile();
  Future<void> saveConfigDataSource(ConfigDataSource? dataSource);
  Future<ConfigDataSource?> getConfigDataSource();
}
