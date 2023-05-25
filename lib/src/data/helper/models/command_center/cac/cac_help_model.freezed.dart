// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cac_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CacHelpModel {
  num? get value => throw _privateConstructorUsedError;
  num? get prevValue => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacHelpModelCopyWith<CacHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacHelpModelCopyWith<$Res> {
  factory $CacHelpModelCopyWith(
          CacHelpModel value, $Res Function(CacHelpModel) then) =
      _$CacHelpModelCopyWithImpl<$Res, CacHelpModel>;
  @useResult
  $Res call({num? value, num? prevValue, int? duration});
}

/// @nodoc
class _$CacHelpModelCopyWithImpl<$Res, $Val extends CacHelpModel>
    implements $CacHelpModelCopyWith<$Res> {
  _$CacHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      prevValue: freezed == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as num?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CacHelpModelCopyWith<$Res>
    implements $CacHelpModelCopyWith<$Res> {
  factory _$$_CacHelpModelCopyWith(
          _$_CacHelpModel value, $Res Function(_$_CacHelpModel) then) =
      __$$_CacHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, num? prevValue, int? duration});
}

/// @nodoc
class __$$_CacHelpModelCopyWithImpl<$Res>
    extends _$CacHelpModelCopyWithImpl<$Res, _$_CacHelpModel>
    implements _$$_CacHelpModelCopyWith<$Res> {
  __$$_CacHelpModelCopyWithImpl(
      _$_CacHelpModel _value, $Res Function(_$_CacHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_CacHelpModel(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      prevValue: freezed == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as num?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CacHelpModel extends _CacHelpModel {
  const _$_CacHelpModel({this.value, this.prevValue, this.duration})
      : super._();

  @override
  final num? value;
  @override
  final num? prevValue;
  @override
  final int? duration;

  @override
  String toString() {
    return 'CacHelpModel(value: $value, prevValue: $prevValue, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacHelpModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, prevValue, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacHelpModelCopyWith<_$_CacHelpModel> get copyWith =>
      __$$_CacHelpModelCopyWithImpl<_$_CacHelpModel>(this, _$identity);
}

abstract class _CacHelpModel extends CacHelpModel {
  const factory _CacHelpModel(
      {final num? value,
      final num? prevValue,
      final int? duration}) = _$_CacHelpModel;
  const _CacHelpModel._() : super._();

  @override
  num? get value;
  @override
  num? get prevValue;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_CacHelpModelCopyWith<_$_CacHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
