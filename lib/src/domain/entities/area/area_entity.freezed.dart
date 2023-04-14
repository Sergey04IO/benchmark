// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AreaEntity {
  String? get title => throw _privateConstructorUsedError;
  List<num> get values => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  num? get difference => throw _privateConstructorUsedError;
  num? get ytdValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreaEntityCopyWith<AreaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaEntityCopyWith<$Res> {
  factory $AreaEntityCopyWith(
          AreaEntity value, $Res Function(AreaEntity) then) =
      _$AreaEntityCopyWithImpl<$Res, AreaEntity>;
  @useResult
  $Res call(
      {String? title,
      List<num> values,
      String? unit,
      num? difference,
      num? ytdValue});
}

/// @nodoc
class _$AreaEntityCopyWithImpl<$Res, $Val extends AreaEntity>
    implements $AreaEntityCopyWith<$Res> {
  _$AreaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? values = null,
    Object? unit = freezed,
    Object? difference = freezed,
    Object? ytdValue = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as num?,
      ytdValue: freezed == ytdValue
          ? _value.ytdValue
          : ytdValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaEntityCopyWith<$Res>
    implements $AreaEntityCopyWith<$Res> {
  factory _$$_AreaEntityCopyWith(
          _$_AreaEntity value, $Res Function(_$_AreaEntity) then) =
      __$$_AreaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      List<num> values,
      String? unit,
      num? difference,
      num? ytdValue});
}

/// @nodoc
class __$$_AreaEntityCopyWithImpl<$Res>
    extends _$AreaEntityCopyWithImpl<$Res, _$_AreaEntity>
    implements _$$_AreaEntityCopyWith<$Res> {
  __$$_AreaEntityCopyWithImpl(
      _$_AreaEntity _value, $Res Function(_$_AreaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? values = null,
    Object? unit = freezed,
    Object? difference = freezed,
    Object? ytdValue = freezed,
  }) {
    return _then(_$_AreaEntity(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as num?,
      ytdValue: freezed == ytdValue
          ? _value.ytdValue
          : ytdValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_AreaEntity implements _AreaEntity {
  const _$_AreaEntity(
      {this.title,
      final List<num> values = const [],
      this.unit,
      this.difference,
      this.ytdValue})
      : _values = values;

  @override
  final String? title;
  final List<num> _values;
  @override
  @JsonKey()
  List<num> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final String? unit;
  @override
  final num? difference;
  @override
  final num? ytdValue;

  @override
  String toString() {
    return 'AreaEntity(title: $title, values: $values, unit: $unit, difference: $difference, ytdValue: $ytdValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaEntity &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.difference, difference) ||
                other.difference == difference) &&
            (identical(other.ytdValue, ytdValue) ||
                other.ytdValue == ytdValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_values), unit, difference, ytdValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaEntityCopyWith<_$_AreaEntity> get copyWith =>
      __$$_AreaEntityCopyWithImpl<_$_AreaEntity>(this, _$identity);
}

abstract class _AreaEntity implements AreaEntity {
  const factory _AreaEntity(
      {final String? title,
      final List<num> values,
      final String? unit,
      final num? difference,
      final num? ytdValue}) = _$_AreaEntity;

  @override
  String? get title;
  @override
  List<num> get values;
  @override
  String? get unit;
  @override
  num? get difference;
  @override
  num? get ytdValue;
  @override
  @JsonKey(ignore: true)
  _$$_AreaEntityCopyWith<_$_AreaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
