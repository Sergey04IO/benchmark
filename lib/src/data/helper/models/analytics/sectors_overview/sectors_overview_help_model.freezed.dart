// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sectors_overview_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectorsOverviewHelpModel {
  String? get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectorsOverviewHelpModelCopyWith<SectorsOverviewHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorsOverviewHelpModelCopyWith<$Res> {
  factory $SectorsOverviewHelpModelCopyWith(SectorsOverviewHelpModel value,
          $Res Function(SectorsOverviewHelpModel) then) =
      _$SectorsOverviewHelpModelCopyWithImpl<$Res, SectorsOverviewHelpModel>;
  @useResult
  $Res call({String? name, Color? color, num? value});
}

/// @nodoc
class _$SectorsOverviewHelpModelCopyWithImpl<$Res,
        $Val extends SectorsOverviewHelpModel>
    implements $SectorsOverviewHelpModelCopyWith<$Res> {
  _$SectorsOverviewHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectorsOverviewHelpModelImplCopyWith<$Res>
    implements $SectorsOverviewHelpModelCopyWith<$Res> {
  factory _$$SectorsOverviewHelpModelImplCopyWith(
          _$SectorsOverviewHelpModelImpl value,
          $Res Function(_$SectorsOverviewHelpModelImpl) then) =
      __$$SectorsOverviewHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Color? color, num? value});
}

/// @nodoc
class __$$SectorsOverviewHelpModelImplCopyWithImpl<$Res>
    extends _$SectorsOverviewHelpModelCopyWithImpl<$Res,
        _$SectorsOverviewHelpModelImpl>
    implements _$$SectorsOverviewHelpModelImplCopyWith<$Res> {
  __$$SectorsOverviewHelpModelImplCopyWithImpl(
      _$SectorsOverviewHelpModelImpl _value,
      $Res Function(_$SectorsOverviewHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SectorsOverviewHelpModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$SectorsOverviewHelpModelImpl implements _SectorsOverviewHelpModel {
  const _$SectorsOverviewHelpModelImpl({this.name, this.color, this.value});

  @override
  final String? name;
  @override
  final Color? color;
  @override
  final num? value;

  @override
  String toString() {
    return 'SectorsOverviewHelpModel(name: $name, color: $color, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorsOverviewHelpModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, color, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorsOverviewHelpModelImplCopyWith<_$SectorsOverviewHelpModelImpl>
      get copyWith => __$$SectorsOverviewHelpModelImplCopyWithImpl<
          _$SectorsOverviewHelpModelImpl>(this, _$identity);
}

abstract class _SectorsOverviewHelpModel implements SectorsOverviewHelpModel {
  const factory _SectorsOverviewHelpModel(
      {final String? name,
      final Color? color,
      final num? value}) = _$SectorsOverviewHelpModelImpl;

  @override
  String? get name;
  @override
  Color? get color;
  @override
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$SectorsOverviewHelpModelImplCopyWith<_$SectorsOverviewHelpModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
