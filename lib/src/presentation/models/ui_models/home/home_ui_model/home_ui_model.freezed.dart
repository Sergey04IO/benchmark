// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUIModel {
  Widget? get appBarTitle => throw _privateConstructorUsedError;
  Color? get backgroundColor => throw _privateConstructorUsedError;
  Color? get iconColor => throw _privateConstructorUsedError;
  Color? get appBarColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUIModelCopyWith<HomeUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUIModelCopyWith<$Res> {
  factory $HomeUIModelCopyWith(
          HomeUIModel value, $Res Function(HomeUIModel) then) =
      _$HomeUIModelCopyWithImpl<$Res, HomeUIModel>;
  @useResult
  $Res call(
      {Widget? appBarTitle,
      Color? backgroundColor,
      Color? iconColor,
      Color? appBarColor});
}

/// @nodoc
class _$HomeUIModelCopyWithImpl<$Res, $Val extends HomeUIModel>
    implements $HomeUIModelCopyWith<$Res> {
  _$HomeUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? backgroundColor = freezed,
    Object? iconColor = freezed,
    Object? appBarColor = freezed,
  }) {
    return _then(_value.copyWith(
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      iconColor: freezed == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      appBarColor: freezed == appBarColor
          ? _value.appBarColor
          : appBarColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeUIModelCopyWith<$Res>
    implements $HomeUIModelCopyWith<$Res> {
  factory _$$_HomeUIModelCopyWith(
          _$_HomeUIModel value, $Res Function(_$_HomeUIModel) then) =
      __$$_HomeUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Widget? appBarTitle,
      Color? backgroundColor,
      Color? iconColor,
      Color? appBarColor});
}

/// @nodoc
class __$$_HomeUIModelCopyWithImpl<$Res>
    extends _$HomeUIModelCopyWithImpl<$Res, _$_HomeUIModel>
    implements _$$_HomeUIModelCopyWith<$Res> {
  __$$_HomeUIModelCopyWithImpl(
      _$_HomeUIModel _value, $Res Function(_$_HomeUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? backgroundColor = freezed,
    Object? iconColor = freezed,
    Object? appBarColor = freezed,
  }) {
    return _then(_$_HomeUIModel(
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      iconColor: freezed == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      appBarColor: freezed == appBarColor
          ? _value.appBarColor
          : appBarColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_HomeUIModel implements _HomeUIModel {
  const _$_HomeUIModel(
      {this.appBarTitle,
      this.backgroundColor,
      this.iconColor,
      this.appBarColor});

  @override
  final Widget? appBarTitle;
  @override
  final Color? backgroundColor;
  @override
  final Color? iconColor;
  @override
  final Color? appBarColor;

  @override
  String toString() {
    return 'HomeUIModel(appBarTitle: $appBarTitle, backgroundColor: $backgroundColor, iconColor: $iconColor, appBarColor: $appBarColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUIModel &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.appBarColor, appBarColor) ||
                other.appBarColor == appBarColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appBarTitle, backgroundColor, iconColor, appBarColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeUIModelCopyWith<_$_HomeUIModel> get copyWith =>
      __$$_HomeUIModelCopyWithImpl<_$_HomeUIModel>(this, _$identity);
}

abstract class _HomeUIModel implements HomeUIModel {
  const factory _HomeUIModel(
      {final Widget? appBarTitle,
      final Color? backgroundColor,
      final Color? iconColor,
      final Color? appBarColor}) = _$_HomeUIModel;

  @override
  Widget? get appBarTitle;
  @override
  Color? get backgroundColor;
  @override
  Color? get iconColor;
  @override
  Color? get appBarColor;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUIModelCopyWith<_$_HomeUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
