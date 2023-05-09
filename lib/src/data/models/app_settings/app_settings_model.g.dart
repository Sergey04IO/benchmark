// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      isUsedSSO: json['isUsedSSO'] as bool? ?? false,
      initialPage:
          $enumDecodeNullable(_$InitialPageEnumMap, json['initialPage']) ??
              InitialPage.home,
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'isUsedSSO': instance.isUsedSSO,
      'initialPage': _$InitialPageEnumMap[instance.initialPage]!,
    };

const _$InitialPageEnumMap = {
  InitialPage.home: 'home',
  InitialPage.dashboard: 'dashboard',
};
