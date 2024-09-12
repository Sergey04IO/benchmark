// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaModelImpl _$$AreaModelImplFromJson(Map<String, dynamic> json) =>
    _$AreaModelImpl(
      date: json['date'] as String?,
      title: json['title'] as String?,
      values: json['values'] as String?,
      unit: json['unit'] as String?,
      difference: json['difference'] as String?,
      ytdValue: json['year to date'] as String?,
    );

Map<String, dynamic> _$$AreaModelImplToJson(_$AreaModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'title': instance.title,
      'values': instance.values,
      'unit': instance.unit,
      'difference': instance.difference,
      'year to date': instance.ytdValue,
    };
