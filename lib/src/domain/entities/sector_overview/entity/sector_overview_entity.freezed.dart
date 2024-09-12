// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_overview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectorOverviewEntity {
  String? get title => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectorOverviewEntityCopyWith<SectorOverviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorOverviewEntityCopyWith<$Res> {
  factory $SectorOverviewEntityCopyWith(SectorOverviewEntity value,
          $Res Function(SectorOverviewEntity) then) =
      _$SectorOverviewEntityCopyWithImpl<$Res, SectorOverviewEntity>;
  @useResult
  $Res call({String? title, num? value});
}

/// @nodoc
class _$SectorOverviewEntityCopyWithImpl<$Res,
        $Val extends SectorOverviewEntity>
    implements $SectorOverviewEntityCopyWith<$Res> {
  _$SectorOverviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectorOverviewEntityImplCopyWith<$Res>
    implements $SectorOverviewEntityCopyWith<$Res> {
  factory _$$SectorOverviewEntityImplCopyWith(_$SectorOverviewEntityImpl value,
          $Res Function(_$SectorOverviewEntityImpl) then) =
      __$$SectorOverviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, num? value});
}

/// @nodoc
class __$$SectorOverviewEntityImplCopyWithImpl<$Res>
    extends _$SectorOverviewEntityCopyWithImpl<$Res, _$SectorOverviewEntityImpl>
    implements _$$SectorOverviewEntityImplCopyWith<$Res> {
  __$$SectorOverviewEntityImplCopyWithImpl(_$SectorOverviewEntityImpl _value,
      $Res Function(_$SectorOverviewEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_$SectorOverviewEntityImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$SectorOverviewEntityImpl implements _SectorOverviewEntity {
  const _$SectorOverviewEntityImpl({this.title, this.value});

  @override
  final String? title;
  @override
  final num? value;

  @override
  String toString() {
    return 'SectorOverviewEntity(title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorOverviewEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorOverviewEntityImplCopyWith<_$SectorOverviewEntityImpl>
      get copyWith =>
          __$$SectorOverviewEntityImplCopyWithImpl<_$SectorOverviewEntityImpl>(
              this, _$identity);
}

abstract class _SectorOverviewEntity implements SectorOverviewEntity {
  const factory _SectorOverviewEntity({final String? title, final num? value}) =
      _$SectorOverviewEntityImpl;

  @override
  String? get title;
  @override
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$SectorOverviewEntityImplCopyWith<_$SectorOverviewEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
