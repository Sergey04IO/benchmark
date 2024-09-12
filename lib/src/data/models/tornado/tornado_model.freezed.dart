// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tornado_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TornadoModel _$TornadoModelFromJson(Map<String, dynamic> json) {
  return _TornadoModel.fromJson(json);
}

/// @nodoc
mixin _$TornadoModel {
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'date value')
  String? get dateValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'benchmark value')
  String? get benchmarkValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TornadoModelCopyWith<TornadoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TornadoModelCopyWith<$Res> {
  factory $TornadoModelCopyWith(
          TornadoModel value, $Res Function(TornadoModel) then) =
      _$TornadoModelCopyWithImpl<$Res, TornadoModel>;
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? unit,
      @JsonKey(name: 'date value') String? dateValue,
      @JsonKey(name: 'benchmark value') String? benchmarkValue});
}

/// @nodoc
class _$TornadoModelCopyWithImpl<$Res, $Val extends TornadoModel>
    implements $TornadoModelCopyWith<$Res> {
  _$TornadoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? unit = freezed,
    Object? dateValue = freezed,
    Object? benchmarkValue = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      dateValue: freezed == dateValue
          ? _value.dateValue
          : dateValue // ignore: cast_nullable_to_non_nullable
              as String?,
      benchmarkValue: freezed == benchmarkValue
          ? _value.benchmarkValue
          : benchmarkValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TornadoModelImplCopyWith<$Res>
    implements $TornadoModelCopyWith<$Res> {
  factory _$$TornadoModelImplCopyWith(
          _$TornadoModelImpl value, $Res Function(_$TornadoModelImpl) then) =
      __$$TornadoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? unit,
      @JsonKey(name: 'date value') String? dateValue,
      @JsonKey(name: 'benchmark value') String? benchmarkValue});
}

/// @nodoc
class __$$TornadoModelImplCopyWithImpl<$Res>
    extends _$TornadoModelCopyWithImpl<$Res, _$TornadoModelImpl>
    implements _$$TornadoModelImplCopyWith<$Res> {
  __$$TornadoModelImplCopyWithImpl(
      _$TornadoModelImpl _value, $Res Function(_$TornadoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? unit = freezed,
    Object? dateValue = freezed,
    Object? benchmarkValue = freezed,
  }) {
    return _then(_$TornadoModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      dateValue: freezed == dateValue
          ? _value.dateValue
          : dateValue // ignore: cast_nullable_to_non_nullable
              as String?,
      benchmarkValue: freezed == benchmarkValue
          ? _value.benchmarkValue
          : benchmarkValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TornadoModelImpl extends _TornadoModel {
  const _$TornadoModelImpl(
      {this.date,
      this.title,
      this.unit,
      @JsonKey(name: 'date value') this.dateValue,
      @JsonKey(name: 'benchmark value') this.benchmarkValue})
      : super._();

  factory _$TornadoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TornadoModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? title;
  @override
  final String? unit;
  @override
  @JsonKey(name: 'date value')
  final String? dateValue;
  @override
  @JsonKey(name: 'benchmark value')
  final String? benchmarkValue;

  @override
  String toString() {
    return 'TornadoModel(date: $date, title: $title, unit: $unit, dateValue: $dateValue, benchmarkValue: $benchmarkValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TornadoModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.dateValue, dateValue) ||
                other.dateValue == dateValue) &&
            (identical(other.benchmarkValue, benchmarkValue) ||
                other.benchmarkValue == benchmarkValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, title, unit, dateValue, benchmarkValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TornadoModelImplCopyWith<_$TornadoModelImpl> get copyWith =>
      __$$TornadoModelImplCopyWithImpl<_$TornadoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TornadoModelImplToJson(
      this,
    );
  }
}

abstract class _TornadoModel extends TornadoModel {
  const factory _TornadoModel(
          {final String? date,
          final String? title,
          final String? unit,
          @JsonKey(name: 'date value') final String? dateValue,
          @JsonKey(name: 'benchmark value') final String? benchmarkValue}) =
      _$TornadoModelImpl;
  const _TornadoModel._() : super._();

  factory _TornadoModel.fromJson(Map<String, dynamic> json) =
      _$TornadoModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get title;
  @override
  String? get unit;
  @override
  @JsonKey(name: 'date value')
  String? get dateValue;
  @override
  @JsonKey(name: 'benchmark value')
  String? get benchmarkValue;
  @override
  @JsonKey(ignore: true)
  _$$TornadoModelImplCopyWith<_$TornadoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
