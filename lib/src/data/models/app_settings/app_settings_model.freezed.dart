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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AppSettingsModelImplCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$AppSettingsModelImplCopyWith(_$AppSettingsModelImpl value,
          $Res Function(_$AppSettingsModelImpl) then) =
      __$$AppSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsEnvironment prod, SettingsEnvironment dev});

  @override
  $SettingsEnvironmentCopyWith<$Res> get prod;
  @override
  $SettingsEnvironmentCopyWith<$Res> get dev;
}

/// @nodoc
class __$$AppSettingsModelImplCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$AppSettingsModelImpl>
    implements _$$AppSettingsModelImplCopyWith<$Res> {
  __$$AppSettingsModelImplCopyWithImpl(_$AppSettingsModelImpl _value,
      $Res Function(_$AppSettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod = null,
    Object? dev = null,
  }) {
    return _then(_$AppSettingsModelImpl(
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
class _$AppSettingsModelImpl extends _AppSettingsModel
    with DiagnosticableTreeMixin {
  const _$AppSettingsModelImpl(
      {this.prod = const SettingsEnvironment(),
      this.dev = const SettingsEnvironment()})
      : super._();

  factory _$AppSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsModelImpl &&
            (identical(other.prod, prod) || other.prod == prod) &&
            (identical(other.dev, dev) || other.dev == dev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prod, dev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      __$$AppSettingsModelImplCopyWithImpl<_$AppSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  const factory _AppSettingsModel(
      {final SettingsEnvironment prod,
      final SettingsEnvironment dev}) = _$AppSettingsModelImpl;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingsModelImpl.fromJson;

  @override
  SettingsEnvironment get prod;
  @override
  SettingsEnvironment get dev;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
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
abstract class _$$SettingsEnvironmentImplCopyWith<$Res>
    implements $SettingsEnvironmentCopyWith<$Res> {
  factory _$$SettingsEnvironmentImplCopyWith(_$SettingsEnvironmentImpl value,
          $Res Function(_$SettingsEnvironmentImpl) then) =
      __$$SettingsEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUsedSSO, InitialPage initialPage});
}

/// @nodoc
class __$$SettingsEnvironmentImplCopyWithImpl<$Res>
    extends _$SettingsEnvironmentCopyWithImpl<$Res, _$SettingsEnvironmentImpl>
    implements _$$SettingsEnvironmentImplCopyWith<$Res> {
  __$$SettingsEnvironmentImplCopyWithImpl(_$SettingsEnvironmentImpl _value,
      $Res Function(_$SettingsEnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsedSSO = null,
    Object? initialPage = null,
  }) {
    return _then(_$SettingsEnvironmentImpl(
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
class _$SettingsEnvironmentImpl
    with DiagnosticableTreeMixin
    implements _SettingsEnvironment {
  const _$SettingsEnvironmentImpl(
      {this.isUsedSSO = false, this.initialPage = InitialPage.analytics});

  factory _$SettingsEnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsEnvironmentImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEnvironmentImpl &&
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
  _$$SettingsEnvironmentImplCopyWith<_$SettingsEnvironmentImpl> get copyWith =>
      __$$SettingsEnvironmentImplCopyWithImpl<_$SettingsEnvironmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsEnvironmentImplToJson(
      this,
    );
  }
}

abstract class _SettingsEnvironment implements SettingsEnvironment {
  const factory _SettingsEnvironment(
      {final bool isUsedSSO,
      final InitialPage initialPage}) = _$SettingsEnvironmentImpl;

  factory _SettingsEnvironment.fromJson(Map<String, dynamic> json) =
      _$SettingsEnvironmentImpl.fromJson;

  @override
  bool get isUsedSSO;
  @override
  InitialPage get initialPage;
  @override
  @JsonKey(ignore: true)
  _$$SettingsEnvironmentImplCopyWith<_$SettingsEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
