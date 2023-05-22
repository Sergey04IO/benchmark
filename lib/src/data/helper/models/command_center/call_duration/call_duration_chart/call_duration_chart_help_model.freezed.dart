// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_duration_chart_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallDurationChartHelpModel {
  List<num> get values => throw _privateConstructorUsedError;
  num? get maxValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallDurationChartHelpModelCopyWith<CallDurationChartHelpModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallDurationChartHelpModelCopyWith<$Res> {
  factory $CallDurationChartHelpModelCopyWith(CallDurationChartHelpModel value,
          $Res Function(CallDurationChartHelpModel) then) =
      _$CallDurationChartHelpModelCopyWithImpl<$Res,
          CallDurationChartHelpModel>;
  @useResult
  $Res call({List<num> values, num? maxValue});
}

/// @nodoc
class _$CallDurationChartHelpModelCopyWithImpl<$Res,
        $Val extends CallDurationChartHelpModel>
    implements $CallDurationChartHelpModelCopyWith<$Res> {
  _$CallDurationChartHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? maxValue = freezed,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallDurationChartHelpModelCopyWith<$Res>
    implements $CallDurationChartHelpModelCopyWith<$Res> {
  factory _$$_CallDurationChartHelpModelCopyWith(
          _$_CallDurationChartHelpModel value,
          $Res Function(_$_CallDurationChartHelpModel) then) =
      __$$_CallDurationChartHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<num> values, num? maxValue});
}

/// @nodoc
class __$$_CallDurationChartHelpModelCopyWithImpl<$Res>
    extends _$CallDurationChartHelpModelCopyWithImpl<$Res,
        _$_CallDurationChartHelpModel>
    implements _$$_CallDurationChartHelpModelCopyWith<$Res> {
  __$$_CallDurationChartHelpModelCopyWithImpl(
      _$_CallDurationChartHelpModel _value,
      $Res Function(_$_CallDurationChartHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? maxValue = freezed,
  }) {
    return _then(_$_CallDurationChartHelpModel(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_CallDurationChartHelpModel implements _CallDurationChartHelpModel {
  const _$_CallDurationChartHelpModel(
      {final List<num> values = const [], this.maxValue})
      : _values = values;

  final List<num> _values;
  @override
  @JsonKey()
  List<num> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final num? maxValue;

  @override
  String toString() {
    return 'CallDurationChartHelpModel(values: $values, maxValue: $maxValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallDurationChartHelpModel &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_values), maxValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallDurationChartHelpModelCopyWith<_$_CallDurationChartHelpModel>
      get copyWith => __$$_CallDurationChartHelpModelCopyWithImpl<
          _$_CallDurationChartHelpModel>(this, _$identity);
}

abstract class _CallDurationChartHelpModel
    implements CallDurationChartHelpModel {
  const factory _CallDurationChartHelpModel(
      {final List<num> values,
      final num? maxValue}) = _$_CallDurationChartHelpModel;

  @override
  List<num> get values;
  @override
  num? get maxValue;
  @override
  @JsonKey(ignore: true)
  _$$_CallDurationChartHelpModelCopyWith<_$_CallDurationChartHelpModel>
      get copyWith => throw _privateConstructorUsedError;
}
