// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tornado_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TornadoModelImpl _$$TornadoModelImplFromJson(Map<String, dynamic> json) =>
    _$TornadoModelImpl(
      date: json['date'] as String?,
      title: json['title'] as String?,
      unit: json['unit'] as String?,
      dateValue: json['date value'] as String?,
      benchmarkValue: json['benchmark value'] as String?,
    );

Map<String, dynamic> _$$TornadoModelImplToJson(_$TornadoModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'title': instance.title,
      'unit': instance.unit,
      'date value': instance.dateValue,
      'benchmark value': instance.benchmarkValue,
    };
