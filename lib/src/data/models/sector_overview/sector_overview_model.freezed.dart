// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SectorOverviewModel _$SectorOverviewModelFromJson(Map<String, dynamic> json) {
  return _SectorOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$SectorOverviewModel {
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectorOverviewModelCopyWith<SectorOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorOverviewModelCopyWith<$Res> {
  factory $SectorOverviewModelCopyWith(
          SectorOverviewModel value, $Res Function(SectorOverviewModel) then) =
      _$SectorOverviewModelCopyWithImpl<$Res, SectorOverviewModel>;
  @useResult
  $Res call({String? date, String? title, String? value, String? average});
}

/// @nodoc
class _$SectorOverviewModelCopyWithImpl<$Res, $Val extends SectorOverviewModel>
    implements $SectorOverviewModelCopyWith<$Res> {
  _$SectorOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? value = freezed,
    Object? average = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectorOverviewModelImplCopyWith<$Res>
    implements $SectorOverviewModelCopyWith<$Res> {
  factory _$$SectorOverviewModelImplCopyWith(_$SectorOverviewModelImpl value,
          $Res Function(_$SectorOverviewModelImpl) then) =
      __$$SectorOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? title, String? value, String? average});
}

/// @nodoc
class __$$SectorOverviewModelImplCopyWithImpl<$Res>
    extends _$SectorOverviewModelCopyWithImpl<$Res, _$SectorOverviewModelImpl>
    implements _$$SectorOverviewModelImplCopyWith<$Res> {
  __$$SectorOverviewModelImplCopyWithImpl(_$SectorOverviewModelImpl _value,
      $Res Function(_$SectorOverviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? value = freezed,
    Object? average = freezed,
  }) {
    return _then(_$SectorOverviewModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectorOverviewModelImpl extends _SectorOverviewModel {
  const _$SectorOverviewModelImpl(
      {this.date, this.title, this.value, this.average})
      : super._();

  factory _$SectorOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectorOverviewModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? title;
  @override
  final String? value;
  @override
  final String? average;

  @override
  String toString() {
    return 'SectorOverviewModel(date: $date, title: $title, value: $value, average: $average)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorOverviewModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, title, value, average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorOverviewModelImplCopyWith<_$SectorOverviewModelImpl> get copyWith =>
      __$$SectorOverviewModelImplCopyWithImpl<_$SectorOverviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectorOverviewModelImplToJson(
      this,
    );
  }
}

abstract class _SectorOverviewModel extends SectorOverviewModel {
  const factory _SectorOverviewModel(
      {final String? date,
      final String? title,
      final String? value,
      final String? average}) = _$SectorOverviewModelImpl;
  const _SectorOverviewModel._() : super._();

  factory _SectorOverviewModel.fromJson(Map<String, dynamic> json) =
      _$SectorOverviewModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get title;
  @override
  String? get value;
  @override
  String? get average;
  @override
  @JsonKey(ignore: true)
  _$$SectorOverviewModelImplCopyWith<_$SectorOverviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
