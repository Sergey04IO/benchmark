// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datetime_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RangeModel<T> {
  T get from => throw _privateConstructorUsedError;
  T get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RangeModelCopyWith<T, RangeModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeModelCopyWith<T, $Res> {
  factory $RangeModelCopyWith(
          RangeModel<T> value, $Res Function(RangeModel<T>) then) =
      _$RangeModelCopyWithImpl<T, $Res, RangeModel<T>>;
  @useResult
  $Res call({T from, T to});
}

/// @nodoc
class _$RangeModelCopyWithImpl<T, $Res, $Val extends RangeModel<T>>
    implements $RangeModelCopyWith<T, $Res> {
  _$RangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as T,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RangeModelImplCopyWith<T, $Res>
    implements $RangeModelCopyWith<T, $Res> {
  factory _$$RangeModelImplCopyWith(
          _$RangeModelImpl<T> value, $Res Function(_$RangeModelImpl<T>) then) =
      __$$RangeModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T from, T to});
}

/// @nodoc
class __$$RangeModelImplCopyWithImpl<T, $Res>
    extends _$RangeModelCopyWithImpl<T, $Res, _$RangeModelImpl<T>>
    implements _$$RangeModelImplCopyWith<T, $Res> {
  __$$RangeModelImplCopyWithImpl(
      _$RangeModelImpl<T> _value, $Res Function(_$RangeModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$RangeModelImpl<T>(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as T,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RangeModelImpl<T> implements _RangeModel<T> {
  const _$RangeModelImpl({required this.from, required this.to});

  @override
  final T from;
  @override
  final T to;

  @override
  String toString() {
    return 'RangeModel<$T>(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeModelImpl<T> &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeModelImplCopyWith<T, _$RangeModelImpl<T>> get copyWith =>
      __$$RangeModelImplCopyWithImpl<T, _$RangeModelImpl<T>>(this, _$identity);
}

abstract class _RangeModel<T> implements RangeModel<T> {
  const factory _RangeModel({required final T from, required final T to}) =
      _$RangeModelImpl<T>;

  @override
  T get from;
  @override
  T get to;
  @override
  @JsonKey(ignore: true)
  _$$RangeModelImplCopyWith<T, _$RangeModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
