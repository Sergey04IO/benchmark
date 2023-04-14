// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_overview_cluster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectorOverviewCluster {
  List<SectorOverviewEntity> get entities => throw _privateConstructorUsedError;
  num? get averageValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectorOverviewClusterCopyWith<SectorOverviewCluster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorOverviewClusterCopyWith<$Res> {
  factory $SectorOverviewClusterCopyWith(SectorOverviewCluster value,
          $Res Function(SectorOverviewCluster) then) =
      _$SectorOverviewClusterCopyWithImpl<$Res, SectorOverviewCluster>;
  @useResult
  $Res call({List<SectorOverviewEntity> entities, num? averageValue});
}

/// @nodoc
class _$SectorOverviewClusterCopyWithImpl<$Res,
        $Val extends SectorOverviewCluster>
    implements $SectorOverviewClusterCopyWith<$Res> {
  _$SectorOverviewClusterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? averageValue = freezed,
  }) {
    return _then(_value.copyWith(
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<SectorOverviewEntity>,
      averageValue: freezed == averageValue
          ? _value.averageValue
          : averageValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectorOverviewClusterCopyWith<$Res>
    implements $SectorOverviewClusterCopyWith<$Res> {
  factory _$$_SectorOverviewClusterCopyWith(_$_SectorOverviewCluster value,
          $Res Function(_$_SectorOverviewCluster) then) =
      __$$_SectorOverviewClusterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SectorOverviewEntity> entities, num? averageValue});
}

/// @nodoc
class __$$_SectorOverviewClusterCopyWithImpl<$Res>
    extends _$SectorOverviewClusterCopyWithImpl<$Res, _$_SectorOverviewCluster>
    implements _$$_SectorOverviewClusterCopyWith<$Res> {
  __$$_SectorOverviewClusterCopyWithImpl(_$_SectorOverviewCluster _value,
      $Res Function(_$_SectorOverviewCluster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
    Object? averageValue = freezed,
  }) {
    return _then(_$_SectorOverviewCluster(
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<SectorOverviewEntity>,
      averageValue: freezed == averageValue
          ? _value.averageValue
          : averageValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_SectorOverviewCluster implements _SectorOverviewCluster {
  const _$_SectorOverviewCluster(
      {final List<SectorOverviewEntity> entities = const [], this.averageValue})
      : _entities = entities;

  final List<SectorOverviewEntity> _entities;
  @override
  @JsonKey()
  List<SectorOverviewEntity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final num? averageValue;

  @override
  String toString() {
    return 'SectorOverviewCluster(entities: $entities, averageValue: $averageValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectorOverviewCluster &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(other.averageValue, averageValue) ||
                other.averageValue == averageValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_entities), averageValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectorOverviewClusterCopyWith<_$_SectorOverviewCluster> get copyWith =>
      __$$_SectorOverviewClusterCopyWithImpl<_$_SectorOverviewCluster>(
          this, _$identity);
}

abstract class _SectorOverviewCluster implements SectorOverviewCluster {
  const factory _SectorOverviewCluster(
      {final List<SectorOverviewEntity> entities,
      final num? averageValue}) = _$_SectorOverviewCluster;

  @override
  List<SectorOverviewEntity> get entities;
  @override
  num? get averageValue;
  @override
  @JsonKey(ignore: true)
  _$$_SectorOverviewClusterCopyWith<_$_SectorOverviewCluster> get copyWith =>
      throw _privateConstructorUsedError;
}
