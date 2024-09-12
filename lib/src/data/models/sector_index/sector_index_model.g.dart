// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectorIndexModelImpl _$$SectorIndexModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SectorIndexModelImpl(
      date: json['date'] as String?,
      title: json['title'] as String?,
      values: json['values'] as String?,
      total: json['total'] as String?,
      difference: json['difference'] as String?,
    );

Map<String, dynamic> _$$SectorIndexModelImplToJson(
        _$SectorIndexModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'title': instance.title,
      'values': instance.values,
      'total': instance.total,
      'difference': instance.difference,
    };
