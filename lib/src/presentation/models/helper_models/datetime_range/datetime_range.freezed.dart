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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_RangeModelCopyWith<T, $Res>
    implements $RangeModelCopyWith<T, $Res> {
  factory _$$_RangeModelCopyWith(
          _$_RangeModel<T> value, $Res Function(_$_RangeModel<T>) then) =
      __$$_RangeModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T from, T to});
}

/// @nodoc
class __$$_RangeModelCopyWithImpl<T, $Res>
    extends _$RangeModelCopyWithImpl<T, $Res, _$_RangeModel<T>>
    implements _$$_RangeModelCopyWith<T, $Res> {
  __$$_RangeModelCopyWithImpl(
      _$_RangeModel<T> _value, $Res Function(_$_RangeModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_RangeModel<T>(
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

class _$_RangeModel<T> implements _RangeModel<T> {
  const _$_RangeModel({required this.from, required this.to});

  @override
  final T from;
  @override
  final T to;

  @override
  String toString() {
    return 'RangeModel<$T>(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RangeModel<T> &&
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
  _$$_RangeModelCopyWith<T, _$_RangeModel<T>> get copyWith =>
      __$$_RangeModelCopyWithImpl<T, _$_RangeModel<T>>(this, _$identity);
}

abstract class _RangeModel<T> implements RangeModel<T> {
  const factory _RangeModel({required final T from, required final T to}) =
      _$_RangeModel<T>;

  @override
  T get from;
  @override
  T get to;
  @override
  @JsonKey(ignore: true)
  _$$_RangeModelCopyWith<T, _$_RangeModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
