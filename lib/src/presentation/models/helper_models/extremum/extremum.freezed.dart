// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extremum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Extremum {
  num get min => throw _privateConstructorUsedError;
  num get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtremumCopyWith<Extremum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtremumCopyWith<$Res> {
  factory $ExtremumCopyWith(Extremum value, $Res Function(Extremum) then) =
      _$ExtremumCopyWithImpl<$Res, Extremum>;
  @useResult
  $Res call({num min, num max});
}

/// @nodoc
class _$ExtremumCopyWithImpl<$Res, $Val extends Extremum>
    implements $ExtremumCopyWith<$Res> {
  _$ExtremumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExtremumCopyWith<$Res> implements $ExtremumCopyWith<$Res> {
  factory _$$_ExtremumCopyWith(
          _$_Extremum value, $Res Function(_$_Extremum) then) =
      __$$_ExtremumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num min, num max});
}

/// @nodoc
class __$$_ExtremumCopyWithImpl<$Res>
    extends _$ExtremumCopyWithImpl<$Res, _$_Extremum>
    implements _$$_ExtremumCopyWith<$Res> {
  __$$_ExtremumCopyWithImpl(
      _$_Extremum _value, $Res Function(_$_Extremum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$_Extremum(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_Extremum extends _Extremum {
  const _$_Extremum({this.min = 0, this.max = 0}) : super._();

  @override
  @JsonKey()
  final num min;
  @override
  @JsonKey()
  final num max;

  @override
  String toString() {
    return 'Extremum(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Extremum &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtremumCopyWith<_$_Extremum> get copyWith =>
      __$$_ExtremumCopyWithImpl<_$_Extremum>(this, _$identity);
}

abstract class _Extremum extends Extremum {
  const factory _Extremum({final num min, final num max}) = _$_Extremum;
  const _Extremum._() : super._();

  @override
  num get min;
  @override
  num get max;
  @override
  @JsonKey(ignore: true)
  _$$_ExtremumCopyWith<_$_Extremum> get copyWith =>
      throw _privateConstructorUsedError;
}
