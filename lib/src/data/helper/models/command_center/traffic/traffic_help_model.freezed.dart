// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traffic_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrafficHelpModel {
  TrafficDataHelpModel? get advertising => throw _privateConstructorUsedError;
  TrafficDataHelpModel? get session => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrafficHelpModelCopyWith<TrafficHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficHelpModelCopyWith<$Res> {
  factory $TrafficHelpModelCopyWith(
          TrafficHelpModel value, $Res Function(TrafficHelpModel) then) =
      _$TrafficHelpModelCopyWithImpl<$Res, TrafficHelpModel>;
  @useResult
  $Res call({TrafficDataHelpModel? advertising, TrafficDataHelpModel? session});

  $TrafficDataHelpModelCopyWith<$Res>? get advertising;
  $TrafficDataHelpModelCopyWith<$Res>? get session;
}

/// @nodoc
class _$TrafficHelpModelCopyWithImpl<$Res, $Val extends TrafficHelpModel>
    implements $TrafficHelpModelCopyWith<$Res> {
  _$TrafficHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertising = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      advertising: freezed == advertising
          ? _value.advertising
          : advertising // ignore: cast_nullable_to_non_nullable
              as TrafficDataHelpModel?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrafficDataHelpModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrafficDataHelpModelCopyWith<$Res>? get advertising {
    if (_value.advertising == null) {
      return null;
    }

    return $TrafficDataHelpModelCopyWith<$Res>(_value.advertising!, (value) {
      return _then(_value.copyWith(advertising: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrafficDataHelpModelCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $TrafficDataHelpModelCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrafficHelpModelCopyWith<$Res>
    implements $TrafficHelpModelCopyWith<$Res> {
  factory _$$_TrafficHelpModelCopyWith(
          _$_TrafficHelpModel value, $Res Function(_$_TrafficHelpModel) then) =
      __$$_TrafficHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrafficDataHelpModel? advertising, TrafficDataHelpModel? session});

  @override
  $TrafficDataHelpModelCopyWith<$Res>? get advertising;
  @override
  $TrafficDataHelpModelCopyWith<$Res>? get session;
}

/// @nodoc
class __$$_TrafficHelpModelCopyWithImpl<$Res>
    extends _$TrafficHelpModelCopyWithImpl<$Res, _$_TrafficHelpModel>
    implements _$$_TrafficHelpModelCopyWith<$Res> {
  __$$_TrafficHelpModelCopyWithImpl(
      _$_TrafficHelpModel _value, $Res Function(_$_TrafficHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertising = freezed,
    Object? session = freezed,
  }) {
    return _then(_$_TrafficHelpModel(
      advertising: freezed == advertising
          ? _value.advertising
          : advertising // ignore: cast_nullable_to_non_nullable
              as TrafficDataHelpModel?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrafficDataHelpModel?,
    ));
  }
}

/// @nodoc

class _$_TrafficHelpModel implements _TrafficHelpModel {
  const _$_TrafficHelpModel({this.advertising, this.session});

  @override
  final TrafficDataHelpModel? advertising;
  @override
  final TrafficDataHelpModel? session;

  @override
  String toString() {
    return 'TrafficHelpModel(advertising: $advertising, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficHelpModel &&
            (identical(other.advertising, advertising) ||
                other.advertising == advertising) &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, advertising, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficHelpModelCopyWith<_$_TrafficHelpModel> get copyWith =>
      __$$_TrafficHelpModelCopyWithImpl<_$_TrafficHelpModel>(this, _$identity);
}

abstract class _TrafficHelpModel implements TrafficHelpModel {
  const factory _TrafficHelpModel(
      {final TrafficDataHelpModel? advertising,
      final TrafficDataHelpModel? session}) = _$_TrafficHelpModel;

  @override
  TrafficDataHelpModel? get advertising;
  @override
  TrafficDataHelpModel? get session;
  @override
  @JsonKey(ignore: true)
  _$$_TrafficHelpModelCopyWith<_$_TrafficHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrafficDataHelpModel {
  num? get value => throw _privateConstructorUsedError;
  num? get prevValue => throw _privateConstructorUsedError;
  List<num> get chartValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrafficDataHelpModelCopyWith<TrafficDataHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficDataHelpModelCopyWith<$Res> {
  factory $TrafficDataHelpModelCopyWith(TrafficDataHelpModel value,
          $Res Function(TrafficDataHelpModel) then) =
      _$TrafficDataHelpModelCopyWithImpl<$Res, TrafficDataHelpModel>;
  @useResult
  $Res call({num? value, num? prevValue, List<num> chartValues});
}

/// @nodoc
class _$TrafficDataHelpModelCopyWithImpl<$Res,
        $Val extends TrafficDataHelpModel>
    implements $TrafficDataHelpModelCopyWith<$Res> {
  _$TrafficDataHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? chartValues = null,
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
      chartValues: null == chartValues
          ? _value.chartValues
          : chartValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrafficDataHelpModelCopyWith<$Res>
    implements $TrafficDataHelpModelCopyWith<$Res> {
  factory _$$_TrafficDataHelpModelCopyWith(_$_TrafficDataHelpModel value,
          $Res Function(_$_TrafficDataHelpModel) then) =
      __$$_TrafficDataHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, num? prevValue, List<num> chartValues});
}

/// @nodoc
class __$$_TrafficDataHelpModelCopyWithImpl<$Res>
    extends _$TrafficDataHelpModelCopyWithImpl<$Res, _$_TrafficDataHelpModel>
    implements _$$_TrafficDataHelpModelCopyWith<$Res> {
  __$$_TrafficDataHelpModelCopyWithImpl(_$_TrafficDataHelpModel _value,
      $Res Function(_$_TrafficDataHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? chartValues = null,
  }) {
    return _then(_$_TrafficDataHelpModel(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      prevValue: freezed == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as num?,
      chartValues: null == chartValues
          ? _value._chartValues
          : chartValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc

class _$_TrafficDataHelpModel extends _TrafficDataHelpModel {
  const _$_TrafficDataHelpModel(
      {this.value, this.prevValue, final List<num> chartValues = const []})
      : _chartValues = chartValues,
        super._();

  @override
  final num? value;
  @override
  final num? prevValue;
  final List<num> _chartValues;
  @override
  @JsonKey()
  List<num> get chartValues {
    if (_chartValues is EqualUnmodifiableListView) return _chartValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartValues);
  }

  @override
  String toString() {
    return 'TrafficDataHelpModel(value: $value, prevValue: $prevValue, chartValues: $chartValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficDataHelpModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue) &&
            const DeepCollectionEquality()
                .equals(other._chartValues, _chartValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, prevValue,
      const DeepCollectionEquality().hash(_chartValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficDataHelpModelCopyWith<_$_TrafficDataHelpModel> get copyWith =>
      __$$_TrafficDataHelpModelCopyWithImpl<_$_TrafficDataHelpModel>(
          this, _$identity);
}

abstract class _TrafficDataHelpModel extends TrafficDataHelpModel {
  const factory _TrafficDataHelpModel(
      {final num? value,
      final num? prevValue,
      final List<num> chartValues}) = _$_TrafficDataHelpModel;
  const _TrafficDataHelpModel._() : super._();

  @override
  num? get value;
  @override
  num? get prevValue;
  @override
  List<num> get chartValues;
  @override
  @JsonKey(ignore: true)
  _$$_TrafficDataHelpModelCopyWith<_$_TrafficDataHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
