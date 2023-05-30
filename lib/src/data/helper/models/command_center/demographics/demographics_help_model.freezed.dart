// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demographics_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DemographicsHelpModel {
  String? get category => throw _privateConstructorUsedError;
  num? get male => throw _privateConstructorUsedError;
  num? get female => throw _privateConstructorUsedError;
  num? get unspecified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemographicsHelpModelCopyWith<DemographicsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicsHelpModelCopyWith<$Res> {
  factory $DemographicsHelpModelCopyWith(DemographicsHelpModel value,
          $Res Function(DemographicsHelpModel) then) =
      _$DemographicsHelpModelCopyWithImpl<$Res, DemographicsHelpModel>;
  @useResult
  $Res call({String? category, num? male, num? female, num? unspecified});
}

/// @nodoc
class _$DemographicsHelpModelCopyWithImpl<$Res,
        $Val extends DemographicsHelpModel>
    implements $DemographicsHelpModelCopyWith<$Res> {
  _$DemographicsHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? unspecified = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as num?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as num?,
      unspecified: freezed == unspecified
          ? _value.unspecified
          : unspecified // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DemographicsHelpModelCopyWith<$Res>
    implements $DemographicsHelpModelCopyWith<$Res> {
  factory _$$_DemographicsHelpModelCopyWith(_$_DemographicsHelpModel value,
          $Res Function(_$_DemographicsHelpModel) then) =
      __$$_DemographicsHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? category, num? male, num? female, num? unspecified});
}

/// @nodoc
class __$$_DemographicsHelpModelCopyWithImpl<$Res>
    extends _$DemographicsHelpModelCopyWithImpl<$Res, _$_DemographicsHelpModel>
    implements _$$_DemographicsHelpModelCopyWith<$Res> {
  __$$_DemographicsHelpModelCopyWithImpl(_$_DemographicsHelpModel _value,
      $Res Function(_$_DemographicsHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? male = freezed,
    Object? female = freezed,
    Object? unspecified = freezed,
  }) {
    return _then(_$_DemographicsHelpModel(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as num?,
      female: freezed == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as num?,
      unspecified: freezed == unspecified
          ? _value.unspecified
          : unspecified // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_DemographicsHelpModel implements _DemographicsHelpModel {
  const _$_DemographicsHelpModel(
      {this.category, this.male, this.female, this.unspecified});

  @override
  final String? category;
  @override
  final num? male;
  @override
  final num? female;
  @override
  final num? unspecified;

  @override
  String toString() {
    return 'DemographicsHelpModel(category: $category, male: $male, female: $female, unspecified: $unspecified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DemographicsHelpModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female) &&
            (identical(other.unspecified, unspecified) ||
                other.unspecified == unspecified));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, category, male, female, unspecified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DemographicsHelpModelCopyWith<_$_DemographicsHelpModel> get copyWith =>
      __$$_DemographicsHelpModelCopyWithImpl<_$_DemographicsHelpModel>(
          this, _$identity);
}

abstract class _DemographicsHelpModel implements DemographicsHelpModel {
  const factory _DemographicsHelpModel(
      {final String? category,
      final num? male,
      final num? female,
      final num? unspecified}) = _$_DemographicsHelpModel;

  @override
  String? get category;
  @override
  num? get male;
  @override
  num? get female;
  @override
  num? get unspecified;
  @override
  @JsonKey(ignore: true)
  _$$_DemographicsHelpModelCopyWith<_$_DemographicsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
