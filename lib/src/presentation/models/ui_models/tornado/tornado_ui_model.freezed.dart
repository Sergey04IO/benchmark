// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tornado_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TornadoUIModel {
  String? get name => throw _privateConstructorUsedError;
  double? get currentValue => throw _privateConstructorUsedError;
  double? get comparableValue => throw _privateConstructorUsedError;
  double? get maxWidth => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TornadoUIModelCopyWith<TornadoUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TornadoUIModelCopyWith<$Res> {
  factory $TornadoUIModelCopyWith(
          TornadoUIModel value, $Res Function(TornadoUIModel) then) =
      _$TornadoUIModelCopyWithImpl<$Res, TornadoUIModel>;
  @useResult
  $Res call(
      {String? name,
      double? currentValue,
      double? comparableValue,
      double? maxWidth,
      String? unit});
}

/// @nodoc
class _$TornadoUIModelCopyWithImpl<$Res, $Val extends TornadoUIModel>
    implements $TornadoUIModelCopyWith<$Res> {
  _$TornadoUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? currentValue = freezed,
    Object? comparableValue = freezed,
    Object? maxWidth = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double?,
      comparableValue: freezed == comparableValue
          ? _value.comparableValue
          : comparableValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TornadoUIModelCopyWith<$Res>
    implements $TornadoUIModelCopyWith<$Res> {
  factory _$$_TornadoUIModelCopyWith(
          _$_TornadoUIModel value, $Res Function(_$_TornadoUIModel) then) =
      __$$_TornadoUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      double? currentValue,
      double? comparableValue,
      double? maxWidth,
      String? unit});
}

/// @nodoc
class __$$_TornadoUIModelCopyWithImpl<$Res>
    extends _$TornadoUIModelCopyWithImpl<$Res, _$_TornadoUIModel>
    implements _$$_TornadoUIModelCopyWith<$Res> {
  __$$_TornadoUIModelCopyWithImpl(
      _$_TornadoUIModel _value, $Res Function(_$_TornadoUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? currentValue = freezed,
    Object? comparableValue = freezed,
    Object? maxWidth = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_TornadoUIModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currentValue: freezed == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double?,
      comparableValue: freezed == comparableValue
          ? _value.comparableValue
          : comparableValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TornadoUIModel implements _TornadoUIModel {
  const _$_TornadoUIModel(
      {this.name,
      this.currentValue,
      this.comparableValue,
      this.maxWidth,
      this.unit});

  @override
  final String? name;
  @override
  final double? currentValue;
  @override
  final double? comparableValue;
  @override
  final double? maxWidth;
  @override
  final String? unit;

  @override
  String toString() {
    return 'TornadoUIModel(name: $name, currentValue: $currentValue, comparableValue: $comparableValue, maxWidth: $maxWidth, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TornadoUIModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.comparableValue, comparableValue) ||
                other.comparableValue == comparableValue) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, currentValue, comparableValue, maxWidth, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TornadoUIModelCopyWith<_$_TornadoUIModel> get copyWith =>
      __$$_TornadoUIModelCopyWithImpl<_$_TornadoUIModel>(this, _$identity);
}

abstract class _TornadoUIModel implements TornadoUIModel {
  const factory _TornadoUIModel(
      {final String? name,
      final double? currentValue,
      final double? comparableValue,
      final double? maxWidth,
      final String? unit}) = _$_TornadoUIModel;

  @override
  String? get name;
  @override
  double? get currentValue;
  @override
  double? get comparableValue;
  @override
  double? get maxWidth;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_TornadoUIModelCopyWith<_$_TornadoUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
