part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.gsheetsData() = GsheetsData;
  const factory SettingsState.excelData(ConfigExcelFileModel? file) = ExcelData;
  const factory SettingsState.settingsError(String message) = SettingsError;
  const factory SettingsState.clearState() = _ClearState;
}
