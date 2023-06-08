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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_VideoStatsHelpModelCopyWith<$Res>
    implements $VideoStatsHelpModelCopyWith<$Res> {
  factory _$$_VideoStatsHelpModelCopyWith(_$_VideoStatsHelpModel value,
          $Res Function(_$_VideoStatsHelpModel) then) =
      __$$_VideoStatsHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? playCount, num? engagement, num? playRate});
}

/// @nodoc
class __$$_VideoStatsHelpModelCopyWithImpl<$Res>
    extends _$VideoStatsHelpModelCopyWithImpl<$Res, _$_VideoStatsHelpModel>
    implements _$$_VideoStatsHelpModelCopyWith<$Res> {
  __$$_VideoStatsHelpModelCopyWithImpl(_$_VideoStatsHelpModel _value,
      $Res Function(_$_VideoStatsHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playCount = freezed,
    Object? engagement = freezed,
    Object? playRate = freezed,
  }) {
    return _then(_$_VideoStatsHelpModel(
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

class _$_VideoStatsHelpModel implements _VideoStatsHelpModel {
  const _$_VideoStatsHelpModel(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoStatsHelpModel &&
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
  _$$_VideoStatsHelpModelCopyWith<_$_VideoStatsHelpModel> get copyWith =>
      __$$_VideoStatsHelpModelCopyWithImpl<_$_VideoStatsHelpModel>(
          this, _$identity);
}

abstract class _VideoStatsHelpModel implements VideoStatsHelpModel {
  const factory _VideoStatsHelpModel(
      {final num? playCount,
      final num? engagement,
      final num? playRate}) = _$_VideoStatsHelpModel;

  @override
  num? get playCount;
  @override
  num? get engagement;
  @override
  num? get playRate;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStatsHelpModelCopyWith<_$_VideoStatsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
