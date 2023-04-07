// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tornado_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TornadoModel _$$_TornadoModelFromJson(Map<String, dynamic> json) =>
    _$_TornadoModel(
      date: json['date'] as String?,
      title: json['title'] as String?,
      unit: json['unit'] as String?,
      dateValue: json['date value'] as String?,
      benchmarkValue: json['benchmark value'] as String?,
    );

Map<String, dynamic> _$$_TornadoModelToJson(_$_TornadoModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'title': instance.title,
      'unit': instance.unit,
      'date value': instance.dateValue,
      'benchmark value': instance.benchmarkValue,
    };
