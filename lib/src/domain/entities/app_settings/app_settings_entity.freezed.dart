// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSettingsEntity {
  bool get isUsedSSO => throw _privateConstructorUsedError;
  InitialPage get initialPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsEntityCopyWith<AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsEntityCopyWith<$Res> {
  factory $AppSettingsEntityCopyWith(
          AppSettingsEntity value, $Res Function(AppSettingsEntity) then) =
      _$AppSettingsEntityCopyWithImpl<$Res, AppSettingsEntity>;
  @useResult
  $Res call({bool isUsedSSO, InitialPage initialPage});
}

/// @nodoc
class _$AppSettingsEntityCopyWithImpl<$Res, $Val extends AppSettingsEntity>
    implements $AppSettingsEntityCopyWith<$Res> {
  _$AppSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsedSSO = null,
    Object? initialPage = null,
  }) {
    return _then(_value.copyWith(
      isUsedSSO: null == isUsedSSO
          ? _value.isUsedSSO
          : isUsedSSO // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _value.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as InitialPage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsEntityCopyWith<$Res>
    implements $AppSettingsEntityCopyWith<$Res> {
  factory _$$_AppSettingsEntityCopyWith(_$_AppSettingsEntity value,
          $Res Function(_$_AppSettingsEntity) then) =
      __$$_AppSettingsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUsedSSO, InitialPage initialPage});
}

/// @nodoc
class __$$_AppSettingsEntityCopyWithImpl<$Res>
    extends _$AppSettingsEntityCopyWithImpl<$Res, _$_AppSettingsEntity>
    implements _$$_AppSettingsEntityCopyWith<$Res> {
  __$$_AppSettingsEntityCopyWithImpl(
      _$_AppSettingsEntity _value, $Res Function(_$_AppSettingsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsedSSO = null,
    Object? initialPage = null,
  }) {
    return _then(_$_AppSettingsEntity(
      isUsedSSO: null == isUsedSSO
          ? _value.isUsedSSO
          : isUsedSSO // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _value.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as InitialPage,
    ));
  }
}

/// @nodoc

class _$_AppSettingsEntity implements _AppSettingsEntity {
  const _$_AppSettingsEntity(
      {this.isUsedSSO = false, this.initialPage = InitialPage.analytics});

  @override
  @JsonKey()
  final bool isUsedSSO;
  @override
  @JsonKey()
  final InitialPage initialPage;

  @override
  String toString() {
    return 'AppSettingsEntity(isUsedSSO: $isUsedSSO, initialPage: $initialPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsEntity &&
            (identical(other.isUsedSSO, isUsedSSO) ||
                other.isUsedSSO == isUsedSSO) &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUsedSSO, initialPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsEntityCopyWith<_$_AppSettingsEntity> get copyWith =>
      __$$_AppSettingsEntityCopyWithImpl<_$_AppSettingsEntity>(
          this, _$identity);
}

abstract class _AppSettingsEntity implements AppSettingsEntity {
  const factory _AppSettingsEntity(
      {final bool isUsedSSO,
      final InitialPage initialPage}) = _$_AppSettingsEntity;

  @override
  bool get isUsedSSO;
  @override
  InitialPage get initialPage;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsEntityCopyWith<_$_AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
