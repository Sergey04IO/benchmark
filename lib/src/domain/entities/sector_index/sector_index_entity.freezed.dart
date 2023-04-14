// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_index_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectorIndexEntity {
  String? get title => throw _privateConstructorUsedError;
  List<num> get values => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get difference => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectorIndexEntityCopyWith<SectorIndexEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorIndexEntityCopyWith<$Res> {
  factory $SectorIndexEntityCopyWith(
          SectorIndexEntity value, $Res Function(SectorIndexEntity) then) =
      _$SectorIndexEntityCopyWithImpl<$Res, SectorIndexEntity>;
  @useResult
  $Res call({String? title, List<num> values, num? total, num? difference});
}

/// @nodoc
class _$SectorIndexEntityCopyWithImpl<$Res, $Val extends SectorIndexEntity>
    implements $SectorIndexEntityCopyWith<$Res> {
  _$SectorIndexEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? values = null,
    Object? total = freezed,
    Object? difference = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectorIndexEntityCopyWith<$Res>
    implements $SectorIndexEntityCopyWith<$Res> {
  factory _$$_SectorIndexEntityCopyWith(_$_SectorIndexEntity value,
          $Res Function(_$_SectorIndexEntity) then) =
      __$$_SectorIndexEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<num> values, num? total, num? difference});
}

/// @nodoc
class __$$_SectorIndexEntityCopyWithImpl<$Res>
    extends _$SectorIndexEntityCopyWithImpl<$Res, _$_SectorIndexEntity>
    implements _$$_SectorIndexEntityCopyWith<$Res> {
  __$$_SectorIndexEntityCopyWithImpl(
      _$_SectorIndexEntity _value, $Res Function(_$_SectorIndexEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? values = null,
    Object? total = freezed,
    Object? difference = freezed,
  }) {
    return _then(_$_SectorIndexEntity(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_SectorIndexEntity implements _SectorIndexEntity {
  const _$_SectorIndexEntity(
      {this.title,
      final List<num> values = const [],
      this.total,
      this.difference})
      : _values = values;

  @override
  final String? title;
  final List<num> _values;
  @override
  @JsonKey()
  List<num> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final num? total;
  @override
  final num? difference;

  @override
  String toString() {
    return 'SectorIndexEntity(title: $title, values: $values, total: $total, difference: $difference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectorIndexEntity &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.difference, difference) ||
                other.difference == difference));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_values), total, difference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectorIndexEntityCopyWith<_$_SectorIndexEntity> get copyWith =>
      __$$_SectorIndexEntityCopyWithImpl<_$_SectorIndexEntity>(
          this, _$identity);
}

abstract class _SectorIndexEntity implements SectorIndexEntity {
  const factory _SectorIndexEntity(
      {final String? title,
      final List<num> values,
      final num? total,
      final num? difference}) = _$_SectorIndexEntity;

  @override
  String? get title;
  @override
  List<num> get values;
  @override
  num? get total;
  @override
  num? get difference;
  @override
  @JsonKey(ignore: true)
  _$$_SectorIndexEntityCopyWith<_$_SectorIndexEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
