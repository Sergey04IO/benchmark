// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  SettingsEnvironment get prod => throw _privateConstructorUsedError;
  SettingsEnvironment get dev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call({SettingsEnvironment prod, SettingsEnvironment dev});

  $SettingsEnvironmentCopyWith<$Res> get prod;
  $SettingsEnvironmentCopyWith<$Res> get dev;
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod = null,
    Object? dev = null,
  }) {
    return _then(_value.copyWith(
      prod: null == prod
          ? _value.prod
          : prod // ignore: cast_nullable_to_non_nullable
              as SettingsEnvironment,
      dev: null == dev
          ? _value.dev
          : dev // ignore: cast_nullable_to_non_nullable
              as SettingsEnvironment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsEnvironmentCopyWith<$Res> get prod {
    return $SettingsEnvironmentCopyWith<$Res>(_value.prod, (value) {
      return _then(_value.copyWith(prod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsEnvironmentCopyWith<$Res> get dev {
    return $SettingsEnvironmentCopyWith<$Res>(_value.dev, (value) {
      return _then(_value.copyWith(dev: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppSettingsModelCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$_AppSettingsModelCopyWith(
          _$_AppSettingsModel value, $Res Function(_$_AppSettingsModel) then) =
      __$$_AppSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsEnvironment prod, SettingsEnvironment dev});

  @override
  $SettingsEnvironmentCopyWith<$Res> get prod;
  @override
  $SettingsEnvironmentCopyWith<$Res> get dev;
}

/// @nodoc
class __$$_AppSettingsModelCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$_AppSettingsModel>
    implements _$$_AppSettingsModelCopyWith<$Res> {
  __$$_AppSettingsModelCopyWithImpl(
      _$_AppSettingsModel _value, $Res Function(_$_AppSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod = null,
    Object? dev = null,
  }) {
    return _then(_$_AppSettingsModel(
      prod: null == prod
          ? _value.prod
          : prod // ignore: cast_nullable_to_non_nullable
              as SettingsEnvironment,
      dev: null == dev
          ? _value.dev
          : dev // ignore: cast_nullable_to_non_nullable
              as SettingsEnvironment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettingsModel extends _AppSettingsModel
    with DiagnosticableTreeMixin {
  const _$_AppSettingsModel(
      {this.prod = const SettingsEnvironment(),
      this.dev = const SettingsEnvironment()})
      : super._();

  factory _$_AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsModelFromJson(json);

  @override
  @JsonKey()
  final SettingsEnvironment prod;
  @override
  @JsonKey()
  final SettingsEnvironment dev;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppSettingsModel(prod: $prod, dev: $dev)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppSettingsModel'))
      ..add(DiagnosticsProperty('prod', prod))
      ..add(DiagnosticsProperty('dev', dev));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsModel &&
            (identical(other.prod, prod) || other.prod == prod) &&
            (identical(other.dev, dev) || other.dev == dev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prod, dev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
      __$$_AppSettingsModelCopyWithImpl<_$_AppSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsModelToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  const factory _AppSettingsModel(
      {final SettingsEnvironment prod,
      final SettingsEnvironment dev}) = _$_AppSettingsModel;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingsModel.fromJson;

  @override
  SettingsEnvironment get prod;
  @override
  SettingsEnvironment get dev;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingsEnvironment _$SettingsEnvironmentFromJson(Map<String, dynamic> json) {
  return _SettingsEnvironment.fromJson(json);
}

/// @nodoc
mixin _$SettingsEnvironment {
  bool get isUsedSSO => throw _privateConstructorUsedError;
  InitialPage get initialPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsEnvironmentCopyWith<SettingsEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEnvironmentCopyWith<$Res> {
  factory $SettingsEnvironmentCopyWith(
          SettingsEnvironment value, $Res Function(SettingsEnvironment) then) =
      _$SettingsEnvironmentCopyWithImpl<$Res, SettingsEnvironment>;
  @useResult
  $Res call({bool isUsedSSO, InitialPage initialPage});
}

/// @nodoc
class _$SettingsEnvironmentCopyWithImpl<$Res, $Val extends SettingsEnvironment>
    implements $SettingsEnvironmentCopyWith<$Res> {
  _$SettingsEnvironmentCopyWithImpl(this._value, this._then);

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
abstract class _$$_SettingsEnvironmentCopyWith<$Res>
    implements $SettingsEnvironmentCopyWith<$Res> {
  factory _$$_SettingsEnvironmentCopyWith(_$_SettingsEnvironment value,
          $Res Function(_$_SettingsEnvironment) then) =
      __$$_SettingsEnvironmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUsedSSO, InitialPage initialPage});
}

/// @nodoc
class __$$_SettingsEnvironmentCopyWithImpl<$Res>
    extends _$SettingsEnvironmentCopyWithImpl<$Res, _$_SettingsEnvironment>
    implements _$$_SettingsEnvironmentCopyWith<$Res> {
  __$$_SettingsEnvironmentCopyWithImpl(_$_SettingsEnvironment _value,
      $Res Function(_$_SettingsEnvironment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsedSSO = null,
    Object? initialPage = null,
  }) {
    return _then(_$_SettingsEnvironment(
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
@JsonSerializable()
class _$_SettingsEnvironment
    with DiagnosticableTreeMixin
    implements _SettingsEnvironment {
  const _$_SettingsEnvironment(
      {this.isUsedSSO = false, this.initialPage = InitialPage.analytics});

  factory _$_SettingsEnvironment.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsEnvironmentFromJson(json);

  @override
  @JsonKey()
  final bool isUsedSSO;
  @override
  @JsonKey()
  final InitialPage initialPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEnvironment(isUsedSSO: $isUsedSSO, initialPage: $initialPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEnvironment'))
      ..add(DiagnosticsProperty('isUsedSSO', isUsedSSO))
      ..add(DiagnosticsProperty('initialPage', initialPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsEnvironment &&
            (identical(other.isUsedSSO, isUsedSSO) ||
                other.isUsedSSO == isUsedSSO) &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isUsedSSO, initialPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsEnvironmentCopyWith<_$_SettingsEnvironment> get copyWith =>
      __$$_SettingsEnvironmentCopyWithImpl<_$_SettingsEnvironment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsEnvironmentToJson(
      this,
    );
  }
}

abstract class _SettingsEnvironment implements SettingsEnvironment {
  const factory _SettingsEnvironment(
      {final bool isUsedSSO,
      final InitialPage initialPage}) = _$_SettingsEnvironment;

  factory _SettingsEnvironment.fromJson(Map<String, dynamic> json) =
      _$_SettingsEnvironment.fromJson;

  @override
  bool get isUsedSSO;
  @override
  InitialPage get initialPage;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsEnvironmentCopyWith<_$_SettingsEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}
