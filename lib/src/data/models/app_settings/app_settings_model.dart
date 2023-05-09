import 'package:benchmark/src/app/core/enums/initial_page.dart';
import 'package:benchmark/src/domain/entities/app_settings/app_settings_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  const factory AppSettingsModel({
    @Default(SettingsEnvironment()) SettingsEnvironment prod,
    @Default(SettingsEnvironment()) SettingsEnvironment dev,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  const AppSettingsModel._();

  AppSettingsEntity toEntity() {
    return AppSettingsEntity(
      isUsedSSO: kDebugMode ? dev.isUsedSSO : prod.isUsedSSO,
      initialPage: kDebugMode ? dev.initialPage : prod.initialPage,
    );
  }
}

@freezed
class SettingsEnvironment with _$SettingsEnvironment {
  const factory SettingsEnvironment({
    @Default(false) bool isUsedSSO,
    @Default(InitialPage.analytics) InitialPage initialPage,
  }) = _SettingsEnvironment;

  factory SettingsEnvironment.fromJson(Map<String, dynamic> json) =>
      _$SettingsEnvironmentFromJson(json);
}
