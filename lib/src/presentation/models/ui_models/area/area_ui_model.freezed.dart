// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AreaUIModel {
  String? get title => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  double? get maxValue => throw _privateConstructorUsedError;
  List<double> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreaUIModelCopyWith<AreaUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaUIModelCopyWith<$Res> {
  factory $AreaUIModelCopyWith(
          AreaUIModel value, $Res Function(AreaUIModel) then) =
      _$AreaUIModelCopyWithImpl<$Res, AreaUIModel>;
  @useResult
  $Res call(
      {String? title,
      String? unit,
      double? value,
      double? maxValue,
      List<double> points});
}

/// @nodoc
class _$AreaUIModelCopyWithImpl<$Res, $Val extends AreaUIModel>
    implements $AreaUIModelCopyWith<$Res> {
  _$AreaUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? maxValue = freezed,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaUIModelCopyWith<$Res>
    implements $AreaUIModelCopyWith<$Res> {
  factory _$$_AreaUIModelCopyWith(
          _$_AreaUIModel value, $Res Function(_$_AreaUIModel) then) =
      __$$_AreaUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? unit,
      double? value,
      double? maxValue,
      List<double> points});
}

/// @nodoc
class __$$_AreaUIModelCopyWithImpl<$Res>
    extends _$AreaUIModelCopyWithImpl<$Res, _$_AreaUIModel>
    implements _$$_AreaUIModelCopyWith<$Res> {
  __$$_AreaUIModelCopyWithImpl(
      _$_AreaUIModel _value, $Res Function(_$_AreaUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? maxValue = freezed,
    Object? points = null,
  }) {
    return _then(_$_AreaUIModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_AreaUIModel implements _AreaUIModel {
  const _$_AreaUIModel(
      {this.title,
      this.unit,
      this.value,
      this.maxValue,
      final List<double> points = const []})
      : _points = points;

  @override
  final String? title;
  @override
  final String? unit;
  @override
  final double? value;
  @override
  final double? maxValue;
  final List<double> _points;
  @override
  @JsonKey()
  List<double> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'AreaUIModel(title: $title, unit: $unit, value: $value, maxValue: $maxValue, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaUIModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, unit, value, maxValue,
      const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaUIModelCopyWith<_$_AreaUIModel> get copyWith =>
      __$$_AreaUIModelCopyWithImpl<_$_AreaUIModel>(this, _$identity);
}

abstract class _AreaUIModel implements AreaUIModel {
  const factory _AreaUIModel(
      {final String? title,
      final String? unit,
      final double? value,
      final double? maxValue,
      final List<double> points}) = _$_AreaUIModel;

  @override
  String? get title;
  @override
  String? get unit;
  @override
  double? get value;
  @override
  double? get maxValue;
  @override
  List<double> get points;
  @override
  @JsonKey(ignore: true)
  _$$_AreaUIModelCopyWith<_$_AreaUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
