// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      prod: json['prod'] == null
          ? const SettingsEnvironment()
          : SettingsEnvironment.fromJson(json['prod'] as Map<String, dynamic>),
      dev: json['dev'] == null
          ? const SettingsEnvironment()
          : SettingsEnvironment.fromJson(json['dev'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'prod': instance.prod,
      'dev': instance.dev,
    };

_$_SettingsEnvironment _$$_SettingsEnvironmentFromJson(
        Map<String, dynamic> json) =>
    _$_SettingsEnvironment(
      isUsedSSO: json['isUsedSSO'] as bool? ?? false,
      initialPage:
          $enumDecodeNullable(_$InitialPageEnumMap, json['initialPage']) ??
              InitialPage.analytics,
    );

Map<String, dynamic> _$$_SettingsEnvironmentToJson(
        _$_SettingsEnvironment instance) =>
    <String, dynamic>{
      'isUsedSSO': instance.isUsedSSO,
      'initialPage': _$InitialPageEnumMap[instance.initialPage]!,
    };

const _$InitialPageEnumMap = {
  InitialPage.analytics: 'analytics',
  InitialPage.dashboard: 'dashboard',
};
