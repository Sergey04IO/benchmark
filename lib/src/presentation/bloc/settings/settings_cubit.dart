import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/domain/repositories/settings_repository.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@lazySingleton
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(
    this._settingsRepository,
  ) : super(const SettingsState.initial());

  final SettingsRepository _settingsRepository;

  ConfigExcelFileModel? fileModel;
  ConfigDataSource? configDataSource;

  Future<void> saveDataSource({
    ConfigDataSource? dataSource,
    ConfigExcelFileModel? model,
  }) async {
    try {
      configDataSource = dataSource;
      fileModel = model;
      await _settingsRepository.saveConfigDataSource(dataSource);
      await _settingsRepository.saveConfigFile(model);
      if (model?.excel == null) {
        emit(const SettingsState.gsheetsData());
        return;
      }
      if (dataSource == null || dataSource.isGsheets) {
        emit(const SettingsState.gsheetsData());
      } else {
        emit(SettingsState.excelData(model));
      }
    } catch (e) {
      emit(const SettingsState.settingsError('Data source getting error!'));
    }
  }

  Future<ConfigDataSource?> getDataSource() async {
    try {
      final dataSource = await _settingsRepository.getConfigDataSource();
      final file = await _settingsRepository.getConfigFile();
      configDataSource = dataSource;
      fileModel = file;
      if (dataSource == null || file?.excel == null) {
        emit(const SettingsState.gsheetsData());
        return ConfigDataSource.gsheets;
      }
      if (dataSource.isExcel) {
        emit(SettingsState.excelData(file));
        return ConfigDataSource.excel;
      } else {
        emit(const SettingsState.gsheetsData());
        return ConfigDataSource.gsheets;
      }
    } catch (e) {
      emit(const SettingsState.settingsError('Data source getting error!'));
      return null;
    }
  }
}
