// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_duration_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallDurationHelpModel {
  List<num> get chartValues => throw _privateConstructorUsedError; // in seconds
  int? get callTime => throw _privateConstructorUsedError;
  int? get numberOfCalls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallDurationHelpModelCopyWith<CallDurationHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallDurationHelpModelCopyWith<$Res> {
  factory $CallDurationHelpModelCopyWith(CallDurationHelpModel value,
          $Res Function(CallDurationHelpModel) then) =
      _$CallDurationHelpModelCopyWithImpl<$Res, CallDurationHelpModel>;
  @useResult
  $Res call({List<num> chartValues, int? callTime, int? numberOfCalls});
}

/// @nodoc
class _$CallDurationHelpModelCopyWithImpl<$Res,
        $Val extends CallDurationHelpModel>
    implements $CallDurationHelpModelCopyWith<$Res> {
  _$CallDurationHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartValues = null,
    Object? callTime = freezed,
    Object? numberOfCalls = freezed,
  }) {
    return _then(_value.copyWith(
      chartValues: null == chartValues
          ? _value.chartValues
          : chartValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfCalls: freezed == numberOfCalls
          ? _value.numberOfCalls
          : numberOfCalls // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallDurationHelpModelCopyWith<$Res>
    implements $CallDurationHelpModelCopyWith<$Res> {
  factory _$$_CallDurationHelpModelCopyWith(_$_CallDurationHelpModel value,
          $Res Function(_$_CallDurationHelpModel) then) =
      __$$_CallDurationHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<num> chartValues, int? callTime, int? numberOfCalls});
}

/// @nodoc
class __$$_CallDurationHelpModelCopyWithImpl<$Res>
    extends _$CallDurationHelpModelCopyWithImpl<$Res, _$_CallDurationHelpModel>
    implements _$$_CallDurationHelpModelCopyWith<$Res> {
  __$$_CallDurationHelpModelCopyWithImpl(_$_CallDurationHelpModel _value,
      $Res Function(_$_CallDurationHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartValues = null,
    Object? callTime = freezed,
    Object? numberOfCalls = freezed,
  }) {
    return _then(_$_CallDurationHelpModel(
      chartValues: null == chartValues
          ? _value._chartValues
          : chartValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfCalls: freezed == numberOfCalls
          ? _value.numberOfCalls
          : numberOfCalls // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CallDurationHelpModel extends _CallDurationHelpModel {
  const _$_CallDurationHelpModel(
      {final List<num> chartValues = const [],
      this.callTime,
      this.numberOfCalls})
      : _chartValues = chartValues,
        super._();

  final List<num> _chartValues;
  @override
  @JsonKey()
  List<num> get chartValues {
    if (_chartValues is EqualUnmodifiableListView) return _chartValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartValues);
  }

// in seconds
  @override
  final int? callTime;
  @override
  final int? numberOfCalls;

  @override
  String toString() {
    return 'CallDurationHelpModel(chartValues: $chartValues, callTime: $callTime, numberOfCalls: $numberOfCalls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallDurationHelpModel &&
            const DeepCollectionEquality()
                .equals(other._chartValues, _chartValues) &&
            (identical(other.callTime, callTime) ||
                other.callTime == callTime) &&
            (identical(other.numberOfCalls, numberOfCalls) ||
                other.numberOfCalls == numberOfCalls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chartValues),
      callTime,
      numberOfCalls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallDurationHelpModelCopyWith<_$_CallDurationHelpModel> get copyWith =>
      __$$_CallDurationHelpModelCopyWithImpl<_$_CallDurationHelpModel>(
          this, _$identity);
}

abstract class _CallDurationHelpModel extends CallDurationHelpModel {
  const factory _CallDurationHelpModel(
      {final List<num> chartValues,
      final int? callTime,
      final int? numberOfCalls}) = _$_CallDurationHelpModel;
  const _CallDurationHelpModel._() : super._();

  @override
  List<num> get chartValues;
  @override // in seconds
  int? get callTime;
  @override
  int? get numberOfCalls;
  @override
  @JsonKey(ignore: true)
  _$$_CallDurationHelpModelCopyWith<_$_CallDurationHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
