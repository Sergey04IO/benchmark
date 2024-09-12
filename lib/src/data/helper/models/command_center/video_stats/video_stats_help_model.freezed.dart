// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_stats_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoStatsHelpModel {
  num? get playCount => throw _privateConstructorUsedError;
  num? get engagement => throw _privateConstructorUsedError;
  num? get playRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStatsHelpModelCopyWith<VideoStatsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStatsHelpModelCopyWith<$Res> {
  factory $VideoStatsHelpModelCopyWith(
          VideoStatsHelpModel value, $Res Function(VideoStatsHelpModel) then) =
      _$VideoStatsHelpModelCopyWithImpl<$Res, VideoStatsHelpModel>;
  @useResult
  $Res call({num? playCount, num? engagement, num? playRate});
}

/// @nodoc
class _$VideoStatsHelpModelCopyWithImpl<$Res, $Val extends VideoStatsHelpModel>
    implements $VideoStatsHelpModelCopyWith<$Res> {
  _$VideoStatsHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playCount = freezed,
    Object? engagement = freezed,
    Object? playRate = freezed,
  }) {
    return _then(_value.copyWith(
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as num?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as num?,
      playRate: freezed == playRate
          ? _value.playRate
          : playRate // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoStatsHelpModelImplCopyWith<$Res>
    implements $VideoStatsHelpModelCopyWith<$Res> {
  factory _$$VideoStatsHelpModelImplCopyWith(_$VideoStatsHelpModelImpl value,
          $Res Function(_$VideoStatsHelpModelImpl) then) =
      __$$VideoStatsHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? playCount, num? engagement, num? playRate});
}

/// @nodoc
class __$$VideoStatsHelpModelImplCopyWithImpl<$Res>
    extends _$VideoStatsHelpModelCopyWithImpl<$Res, _$VideoStatsHelpModelImpl>
    implements _$$VideoStatsHelpModelImplCopyWith<$Res> {
  __$$VideoStatsHelpModelImplCopyWithImpl(_$VideoStatsHelpModelImpl _value,
      $Res Function(_$VideoStatsHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playCount = freezed,
    Object? engagement = freezed,
    Object? playRate = freezed,
  }) {
    return _then(_$VideoStatsHelpModelImpl(
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as num?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as num?,
      playRate: freezed == playRate
          ? _value.playRate
          : playRate // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$VideoStatsHelpModelImpl implements _VideoStatsHelpModel {
  const _$VideoStatsHelpModelImpl(
      {this.playCount, this.engagement, this.playRate});

  @override
  final num? playCount;
  @override
  final num? engagement;
  @override
  final num? playRate;

  @override
  String toString() {
    return 'VideoStatsHelpModel(playCount: $playCount, engagement: $engagement, playRate: $playRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoStatsHelpModelImpl &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.playRate, playRate) ||
                other.playRate == playRate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playCount, engagement, playRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoStatsHelpModelImplCopyWith<_$VideoStatsHelpModelImpl> get copyWith =>
      __$$VideoStatsHelpModelImplCopyWithImpl<_$VideoStatsHelpModelImpl>(
          this, _$identity);
}

abstract class _VideoStatsHelpModel implements VideoStatsHelpModel {
  const factory _VideoStatsHelpModel(
      {final num? playCount,
      final num? engagement,
      final num? playRate}) = _$VideoStatsHelpModelImpl;

  @override
  num? get playCount;
  @override
  num? get engagement;
  @override
  num? get playRate;
  @override
  @JsonKey(ignore: true)
  _$$VideoStatsHelpModelImplCopyWith<_$VideoStatsHelpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
