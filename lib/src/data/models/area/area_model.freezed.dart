// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) {
  return _AreaModel.fromJson(json);
}

/// @nodoc
mixin _$AreaModel {
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get values => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get difference => throw _privateConstructorUsedError;
  @JsonKey(name: 'year to date')
  String? get ytdValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaModelCopyWith<AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaModelCopyWith<$Res> {
  factory $AreaModelCopyWith(AreaModel value, $Res Function(AreaModel) then) =
      _$AreaModelCopyWithImpl<$Res, AreaModel>;
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? values,
      String? unit,
      String? difference,
      @JsonKey(name: 'year to date') String? ytdValue});
}

/// @nodoc
class _$AreaModelCopyWithImpl<$Res, $Val extends AreaModel>
    implements $AreaModelCopyWith<$Res> {
  _$AreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? values = freezed,
    Object? unit = freezed,
    Object? difference = freezed,
    Object? ytdValue = freezed,
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
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as String?,
      ytdValue: freezed == ytdValue
          ? _value.ytdValue
          : ytdValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaModelCopyWith<$Res> implements $AreaModelCopyWith<$Res> {
  factory _$$_AreaModelCopyWith(
          _$_AreaModel value, $Res Function(_$_AreaModel) then) =
      __$$_AreaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? values,
      String? unit,
      String? difference,
      @JsonKey(name: 'year to date') String? ytdValue});
}

/// @nodoc
class __$$_AreaModelCopyWithImpl<$Res>
    extends _$AreaModelCopyWithImpl<$Res, _$_AreaModel>
    implements _$$_AreaModelCopyWith<$Res> {
  __$$_AreaModelCopyWithImpl(
      _$_AreaModel _value, $Res Function(_$_AreaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? values = freezed,
    Object? unit = freezed,
    Object? difference = freezed,
    Object? ytdValue = freezed,
  }) {
    return _then(_$_AreaModel(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as String?,
      ytdValue: freezed == ytdValue
          ? _value.ytdValue
          : ytdValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaModel extends _AreaModel {
  const _$_AreaModel(
      {this.date,
      this.title,
      this.values,
      this.unit,
      this.difference,
      @JsonKey(name: 'year to date') this.ytdValue})
      : super._();

  factory _$_AreaModel.fromJson(Map<String, dynamic> json) =>
      _$$_AreaModelFromJson(json);

  @override
  final String? date;
  @override
  final String? title;
  @override
  final String? values;
  @override
  final String? unit;
  @override
  final String? difference;
  @override
  @JsonKey(name: 'year to date')
  final String? ytdValue;

  @override
  String toString() {
    return 'AreaModel(date: $date, title: $title, values: $values, unit: $unit, difference: $difference, ytdValue: $ytdValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.values, values) || other.values == values) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.difference, difference) ||
                other.difference == difference) &&
            (identical(other.ytdValue, ytdValue) ||
                other.ytdValue == ytdValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, title, values, unit, difference, ytdValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaModelCopyWith<_$_AreaModel> get copyWith =>
      __$$_AreaModelCopyWithImpl<_$_AreaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaModelToJson(
      this,
    );
  }
}

abstract class _AreaModel extends AreaModel {
  const factory _AreaModel(
      {final String? date,
      final String? title,
      final String? values,
      final String? unit,
      final String? difference,
      @JsonKey(name: 'year to date') final String? ytdValue}) = _$_AreaModel;
  const _AreaModel._() : super._();

  factory _AreaModel.fromJson(Map<String, dynamic> json) =
      _$_AreaModel.fromJson;

  @override
  String? get date;
  @override
  String? get title;
  @override
  String? get values;
  @override
  String? get unit;
  @override
  String? get difference;
  @override
  @JsonKey(name: 'year to date')
  String? get ytdValue;
  @override
  @JsonKey(ignore: true)
  _$$_AreaModelCopyWith<_$_AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
