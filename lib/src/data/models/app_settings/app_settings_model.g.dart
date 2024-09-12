// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsModelImpl _$$AppSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsModelImpl(
      prod: json['prod'] == null
          ? const SettingsEnvironment()
          : SettingsEnvironment.fromJson(json['prod'] as Map<String, dynamic>),
      dev: json['dev'] == null
          ? const SettingsEnvironment()
          : SettingsEnvironment.fromJson(json['dev'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppSettingsModelImplToJson(
        _$AppSettingsModelImpl instance) =>
    <String, dynamic>{
      'prod': instance.prod,
      'dev': instance.dev,
    };

_$SettingsEnvironmentImpl _$$SettingsEnvironmentImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsEnvironmentImpl(
      isUsedSSO: json['isUsedSSO'] as bool? ?? false,
      initialPage:
          $enumDecodeNullable(_$InitialPageEnumMap, json['initialPage']) ??
              InitialPage.analytics,
    );

Map<String, dynamic> _$$SettingsEnvironmentImplToJson(
        _$SettingsEnvironmentImpl instance) =>
    <String, dynamic>{
      'isUsedSSO': instance.isUsedSSO,
      'initialPage': _$InitialPageEnumMap[instance.initialPage]!,
    };

const _$InitialPageEnumMap = {
  InitialPage.analytics: 'analytics',
  InitialPage.dashboard: 'dashboard',
};
