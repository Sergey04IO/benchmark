import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/enums/initial_page.dart';
import 'package:benchmark/src/domain/repositories/analytics_repository.dart';
import 'package:benchmark/src/domain/repositories/settings_repository.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@lazySingleton
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit(
    this._settingsRepository,
    this._analyticsRepository,
  ) : super(const SettingsState.initial());

  final SettingsRepository _settingsRepository;
  final AnalyticsRepository _analyticsRepository;

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
        emit(const SettingsState.clearState());
        emit(const SettingsState.gsheetsData());
        return;
      }
      if (dataSource == null || dataSource.isGsheets) {
        emit(const SettingsState.clearState());
        emit(const SettingsState.gsheetsData());
      } else {
        emit(const SettingsState.clearState());
        emit(SettingsState.excelData(model));
      }
    } catch (e) {
      emit(const SettingsState.clearState());
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
        emit(const SettingsState.clearState());
        emit(const SettingsState.gsheetsData());
        return ConfigDataSource.gsheets;
      }
      if (dataSource.isExcel) {
        emit(const SettingsState.clearState());
        emit(SettingsState.excelData(file));
        return ConfigDataSource.excel;
      } else {
        emit(const SettingsState.clearState());
        emit(const SettingsState.gsheetsData());
        return ConfigDataSource.gsheets;
      }
    } catch (e) {
      emit(const SettingsState.clearState());
      emit(const SettingsState.settingsError('Data source getting error!'));
      return null;
    }
  }

  Future<void> initAnalyticsSource() async {
    await getDataSource();
    await _analyticsRepository.init(
      configDataSource ?? ConfigDataSource.gsheets,
      excelFile: fileModel?.excel,
    );
  }

  Future<void> firebaseRemoteConfigInit() async {
    try {
      await _settingsRepository.firebaseRemoteConfigInit();
    } catch (e) {
      debugPrint('Firebase remote config init error');
    }
  }

  bool isUsedSSO() {
    try {
      final settings = _settingsRepository.getAppSettings();
      return settings?.isUsedSSO ?? CommonConstants.isUsedSSO;
    } catch (e) {
      debugPrint('Firebase remote config init error');
      return CommonConstants.isUsedSSO;
    }
  }

  InitialPage getInitialPage() {
    try {
      final settings = _settingsRepository.getAppSettings();
      return settings?.initialPage ?? InitialPage.analytics;
    } catch (e) {
      debugPrint('Firebase remote config init error');
      return InitialPage.analytics;
    }
  }
}
