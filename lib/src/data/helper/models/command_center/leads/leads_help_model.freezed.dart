// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leads_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadsHelpModel {
  num? get value => throw _privateConstructorUsedError;
  num? get prevValue => throw _privateConstructorUsedError;
  num? get maxValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadsHelpModelCopyWith<LeadsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadsHelpModelCopyWith<$Res> {
  factory $LeadsHelpModelCopyWith(
          LeadsHelpModel value, $Res Function(LeadsHelpModel) then) =
      _$LeadsHelpModelCopyWithImpl<$Res, LeadsHelpModel>;
  @useResult
  $Res call({num? value, num? prevValue, num? maxValue});
}

/// @nodoc
class _$LeadsHelpModelCopyWithImpl<$Res, $Val extends LeadsHelpModel>
    implements $LeadsHelpModelCopyWith<$Res> {
  _$LeadsHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? maxValue = freezed,
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
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadsHelpModelImplCopyWith<$Res>
    implements $LeadsHelpModelCopyWith<$Res> {
  factory _$$LeadsHelpModelImplCopyWith(_$LeadsHelpModelImpl value,
          $Res Function(_$LeadsHelpModelImpl) then) =
      __$$LeadsHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, num? prevValue, num? maxValue});
}

/// @nodoc
class __$$LeadsHelpModelImplCopyWithImpl<$Res>
    extends _$LeadsHelpModelCopyWithImpl<$Res, _$LeadsHelpModelImpl>
    implements _$$LeadsHelpModelImplCopyWith<$Res> {
  __$$LeadsHelpModelImplCopyWithImpl(
      _$LeadsHelpModelImpl _value, $Res Function(_$LeadsHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_$LeadsHelpModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      prevValue: freezed == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as num?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$LeadsHelpModelImpl implements _LeadsHelpModel {
  const _$LeadsHelpModelImpl({this.value, this.prevValue, this.maxValue});

  @override
  final num? value;
  @override
  final num? prevValue;
  @override
  final num? maxValue;

  @override
  String toString() {
    return 'LeadsHelpModel(value: $value, prevValue: $prevValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadsHelpModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, prevValue, maxValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadsHelpModelImplCopyWith<_$LeadsHelpModelImpl> get copyWith =>
      __$$LeadsHelpModelImplCopyWithImpl<_$LeadsHelpModelImpl>(
          this, _$identity);
}

abstract class _LeadsHelpModel implements LeadsHelpModel {
  const factory _LeadsHelpModel(
      {final num? value,
      final num? prevValue,
      final num? maxValue}) = _$LeadsHelpModelImpl;

  @override
  num? get value;
  @override
  num? get prevValue;
  @override
  num? get maxValue;
  @override
  @JsonKey(ignore: true)
  _$$LeadsHelpModelImplCopyWith<_$LeadsHelpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
