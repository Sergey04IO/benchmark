// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_index_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SectorIndexModel _$SectorIndexModelFromJson(Map<String, dynamic> json) {
  return _SectorIndexModel.fromJson(json);
}

/// @nodoc
mixin _$SectorIndexModel {
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get values => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get difference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectorIndexModelCopyWith<SectorIndexModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorIndexModelCopyWith<$Res> {
  factory $SectorIndexModelCopyWith(
          SectorIndexModel value, $Res Function(SectorIndexModel) then) =
      _$SectorIndexModelCopyWithImpl<$Res, SectorIndexModel>;
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? values,
      String? total,
      String? difference});
}

/// @nodoc
class _$SectorIndexModelCopyWithImpl<$Res, $Val extends SectorIndexModel>
    implements $SectorIndexModelCopyWith<$Res> {
  _$SectorIndexModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? values = freezed,
    Object? total = freezed,
    Object? difference = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectorIndexModelImplCopyWith<$Res>
    implements $SectorIndexModelCopyWith<$Res> {
  factory _$$SectorIndexModelImplCopyWith(_$SectorIndexModelImpl value,
          $Res Function(_$SectorIndexModelImpl) then) =
      __$$SectorIndexModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? title,
      String? values,
      String? total,
      String? difference});
}

/// @nodoc
class __$$SectorIndexModelImplCopyWithImpl<$Res>
    extends _$SectorIndexModelCopyWithImpl<$Res, _$SectorIndexModelImpl>
    implements _$$SectorIndexModelImplCopyWith<$Res> {
  __$$SectorIndexModelImplCopyWithImpl(_$SectorIndexModelImpl _value,
      $Res Function(_$SectorIndexModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? values = freezed,
    Object? total = freezed,
    Object? difference = freezed,
  }) {
    return _then(_$SectorIndexModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      difference: freezed == difference
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectorIndexModelImpl extends _SectorIndexModel {
  const _$SectorIndexModelImpl(
      {this.date, this.title, this.values, this.total, this.difference})
      : super._();

  factory _$SectorIndexModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectorIndexModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? title;
  @override
  final String? values;
  @override
  final String? total;
  @override
  final String? difference;

  @override
  String toString() {
    return 'SectorIndexModel(date: $date, title: $title, values: $values, total: $total, difference: $difference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorIndexModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.values, values) || other.values == values) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.difference, difference) ||
                other.difference == difference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, title, values, total, difference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorIndexModelImplCopyWith<_$SectorIndexModelImpl> get copyWith =>
      __$$SectorIndexModelImplCopyWithImpl<_$SectorIndexModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectorIndexModelImplToJson(
      this,
    );
  }
}

abstract class _SectorIndexModel extends SectorIndexModel {
  const factory _SectorIndexModel(
      {final String? date,
      final String? title,
      final String? values,
      final String? total,
      final String? difference}) = _$SectorIndexModelImpl;
  const _SectorIndexModel._() : super._();

  factory _SectorIndexModel.fromJson(Map<String, dynamic> json) =
      _$SectorIndexModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get title;
  @override
  String? get values;
  @override
  String? get total;
  @override
  String? get difference;
  @override
  @JsonKey(ignore: true)
  _$$SectorIndexModelImplCopyWith<_$SectorIndexModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
