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
  TrafficItemHelpModel? get advertising => throw _privateConstructorUsedError;
  TrafficItemHelpModel? get session => throw _privateConstructorUsedError;

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
  $Res call({TrafficItemHelpModel? advertising, TrafficItemHelpModel? session});

  $TrafficItemHelpModelCopyWith<$Res>? get advertising;
  $TrafficItemHelpModelCopyWith<$Res>? get session;
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
              as TrafficItemHelpModel?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrafficItemHelpModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrafficItemHelpModelCopyWith<$Res>? get advertising {
    if (_value.advertising == null) {
      return null;
    }

    return $TrafficItemHelpModelCopyWith<$Res>(_value.advertising!, (value) {
      return _then(_value.copyWith(advertising: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrafficItemHelpModelCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $TrafficItemHelpModelCopyWith<$Res>(_value.session!, (value) {
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
  $Res call({TrafficItemHelpModel? advertising, TrafficItemHelpModel? session});

  @override
  $TrafficItemHelpModelCopyWith<$Res>? get advertising;
  @override
  $TrafficItemHelpModelCopyWith<$Res>? get session;
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
              as TrafficItemHelpModel?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrafficItemHelpModel?,
    ));
  }
}

/// @nodoc

class _$_TrafficHelpModel implements _TrafficHelpModel {
  const _$_TrafficHelpModel({this.advertising, this.session});

  @override
  final TrafficItemHelpModel? advertising;
  @override
  final TrafficItemHelpModel? session;

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
      {final TrafficItemHelpModel? advertising,
      final TrafficItemHelpModel? session}) = _$_TrafficHelpModel;

  @override
  TrafficItemHelpModel? get advertising;
  @override
  TrafficItemHelpModel? get session;
  @override
  @JsonKey(ignore: true)
  _$$_TrafficHelpModelCopyWith<_$_TrafficHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrafficItemHelpModel {
  num? get value => throw _privateConstructorUsedError;
  num? get prevValue => throw _privateConstructorUsedError;
  List<num> get chartValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrafficItemHelpModelCopyWith<TrafficItemHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficItemHelpModelCopyWith<$Res> {
  factory $TrafficItemHelpModelCopyWith(TrafficItemHelpModel value,
          $Res Function(TrafficItemHelpModel) then) =
      _$TrafficItemHelpModelCopyWithImpl<$Res, TrafficItemHelpModel>;
  @useResult
  $Res call({num? value, num? prevValue, List<num> chartValues});
}

/// @nodoc
class _$TrafficItemHelpModelCopyWithImpl<$Res,
        $Val extends TrafficItemHelpModel>
    implements $TrafficItemHelpModelCopyWith<$Res> {
  _$TrafficItemHelpModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TrafficItemHelpModelCopyWith<$Res>
    implements $TrafficItemHelpModelCopyWith<$Res> {
  factory _$$_TrafficItemHelpModelCopyWith(_$_TrafficItemHelpModel value,
          $Res Function(_$_TrafficItemHelpModel) then) =
      __$$_TrafficItemHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, num? prevValue, List<num> chartValues});
}

/// @nodoc
class __$$_TrafficItemHelpModelCopyWithImpl<$Res>
    extends _$TrafficItemHelpModelCopyWithImpl<$Res, _$_TrafficItemHelpModel>
    implements _$$_TrafficItemHelpModelCopyWith<$Res> {
  __$$_TrafficItemHelpModelCopyWithImpl(_$_TrafficItemHelpModel _value,
      $Res Function(_$_TrafficItemHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? prevValue = freezed,
    Object? chartValues = null,
  }) {
    return _then(_$_TrafficItemHelpModel(
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

class _$_TrafficItemHelpModel extends _TrafficItemHelpModel {
  const _$_TrafficItemHelpModel(
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
    return 'TrafficItemHelpModel(value: $value, prevValue: $prevValue, chartValues: $chartValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficItemHelpModel &&
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
  _$$_TrafficItemHelpModelCopyWith<_$_TrafficItemHelpModel> get copyWith =>
      __$$_TrafficItemHelpModelCopyWithImpl<_$_TrafficItemHelpModel>(
          this, _$identity);
}

abstract class _TrafficItemHelpModel extends TrafficItemHelpModel {
  const factory _TrafficItemHelpModel(
      {final num? value,
      final num? prevValue,
      final List<num> chartValues}) = _$_TrafficItemHelpModel;
  const _TrafficItemHelpModel._() : super._();

  @override
  num? get value;
  @override
  num? get prevValue;
  @override
  List<num> get chartValues;
  @override
  @JsonKey(ignore: true)
  _$$_TrafficItemHelpModelCopyWith<_$_TrafficItemHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
