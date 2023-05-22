// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_duration_card_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallDurationCardHelpModel {
  CallDurationChartHelpModel? get chartModel =>
      throw _privateConstructorUsedError;
  String? get callTime => throw _privateConstructorUsedError;
  int? get numberOfCalls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallDurationCardHelpModelCopyWith<CallDurationCardHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallDurationCardHelpModelCopyWith<$Res> {
  factory $CallDurationCardHelpModelCopyWith(CallDurationCardHelpModel value,
          $Res Function(CallDurationCardHelpModel) then) =
      _$CallDurationCardHelpModelCopyWithImpl<$Res, CallDurationCardHelpModel>;
  @useResult
  $Res call(
      {CallDurationChartHelpModel? chartModel,
      String? callTime,
      int? numberOfCalls});

  $CallDurationChartHelpModelCopyWith<$Res>? get chartModel;
}

/// @nodoc
class _$CallDurationCardHelpModelCopyWithImpl<$Res,
        $Val extends CallDurationCardHelpModel>
    implements $CallDurationCardHelpModelCopyWith<$Res> {
  _$CallDurationCardHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartModel = freezed,
    Object? callTime = freezed,
    Object? numberOfCalls = freezed,
  }) {
    return _then(_value.copyWith(
      chartModel: freezed == chartModel
          ? _value.chartModel
          : chartModel // ignore: cast_nullable_to_non_nullable
              as CallDurationChartHelpModel?,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCalls: freezed == numberOfCalls
          ? _value.numberOfCalls
          : numberOfCalls // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CallDurationChartHelpModelCopyWith<$Res>? get chartModel {
    if (_value.chartModel == null) {
      return null;
    }

    return $CallDurationChartHelpModelCopyWith<$Res>(_value.chartModel!,
        (value) {
      return _then(_value.copyWith(chartModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CallDurationCardHelpModelCopyWith<$Res>
    implements $CallDurationCardHelpModelCopyWith<$Res> {
  factory _$$_CallDurationCardHelpModelCopyWith(
          _$_CallDurationCardHelpModel value,
          $Res Function(_$_CallDurationCardHelpModel) then) =
      __$$_CallDurationCardHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CallDurationChartHelpModel? chartModel,
      String? callTime,
      int? numberOfCalls});

  @override
  $CallDurationChartHelpModelCopyWith<$Res>? get chartModel;
}

/// @nodoc
class __$$_CallDurationCardHelpModelCopyWithImpl<$Res>
    extends _$CallDurationCardHelpModelCopyWithImpl<$Res,
        _$_CallDurationCardHelpModel>
    implements _$$_CallDurationCardHelpModelCopyWith<$Res> {
  __$$_CallDurationCardHelpModelCopyWithImpl(
      _$_CallDurationCardHelpModel _value,
      $Res Function(_$_CallDurationCardHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartModel = freezed,
    Object? callTime = freezed,
    Object? numberOfCalls = freezed,
  }) {
    return _then(_$_CallDurationCardHelpModel(
      chartModel: freezed == chartModel
          ? _value.chartModel
          : chartModel // ignore: cast_nullable_to_non_nullable
              as CallDurationChartHelpModel?,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfCalls: freezed == numberOfCalls
          ? _value.numberOfCalls
          : numberOfCalls // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CallDurationCardHelpModel implements _CallDurationCardHelpModel {
  const _$_CallDurationCardHelpModel(
      {this.chartModel, this.callTime, this.numberOfCalls});

  @override
  final CallDurationChartHelpModel? chartModel;
  @override
  final String? callTime;
  @override
  final int? numberOfCalls;

  @override
  String toString() {
    return 'CallDurationCardHelpModel(chartModel: $chartModel, callTime: $callTime, numberOfCalls: $numberOfCalls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallDurationCardHelpModel &&
            (identical(other.chartModel, chartModel) ||
                other.chartModel == chartModel) &&
            (identical(other.callTime, callTime) ||
                other.callTime == callTime) &&
            (identical(other.numberOfCalls, numberOfCalls) ||
                other.numberOfCalls == numberOfCalls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chartModel, callTime, numberOfCalls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallDurationCardHelpModelCopyWith<_$_CallDurationCardHelpModel>
      get copyWith => __$$_CallDurationCardHelpModelCopyWithImpl<
          _$_CallDurationCardHelpModel>(this, _$identity);
}

abstract class _CallDurationCardHelpModel implements CallDurationCardHelpModel {
  const factory _CallDurationCardHelpModel(
      {final CallDurationChartHelpModel? chartModel,
      final String? callTime,
      final int? numberOfCalls}) = _$_CallDurationCardHelpModel;

  @override
  CallDurationChartHelpModel? get chartModel;
  @override
  String? get callTime;
  @override
  int? get numberOfCalls;
  @override
  @JsonKey(ignore: true)
  _$$_CallDurationCardHelpModelCopyWith<_$_CallDurationCardHelpModel>
      get copyWith => throw _privateConstructorUsedError;
}
