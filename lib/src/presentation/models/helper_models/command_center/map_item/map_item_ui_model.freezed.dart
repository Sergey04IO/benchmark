// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_item_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapItemUIModel {
  String get countryName => throw _privateConstructorUsedError;
  int get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapItemUIModelCopyWith<MapItemUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapItemUIModelCopyWith<$Res> {
  factory $MapItemUIModelCopyWith(
          MapItemUIModel value, $Res Function(MapItemUIModel) then) =
      _$MapItemUIModelCopyWithImpl<$Res, MapItemUIModel>;
  @useResult
  $Res call({String countryName, int accounts});
}

/// @nodoc
class _$MapItemUIModelCopyWithImpl<$Res, $Val extends MapItemUIModel>
    implements $MapItemUIModelCopyWith<$Res> {
  _$MapItemUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapItemUIModelCopyWith<$Res>
    implements $MapItemUIModelCopyWith<$Res> {
  factory _$$_MapItemUIModelCopyWith(
          _$_MapItemUIModel value, $Res Function(_$_MapItemUIModel) then) =
      __$$_MapItemUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryName, int accounts});
}

/// @nodoc
class __$$_MapItemUIModelCopyWithImpl<$Res>
    extends _$MapItemUIModelCopyWithImpl<$Res, _$_MapItemUIModel>
    implements _$$_MapItemUIModelCopyWith<$Res> {
  __$$_MapItemUIModelCopyWithImpl(
      _$_MapItemUIModel _value, $Res Function(_$_MapItemUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? accounts = null,
  }) {
    return _then(_$_MapItemUIModel(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MapItemUIModel implements _MapItemUIModel {
  const _$_MapItemUIModel({required this.countryName, this.accounts = 0});

  @override
  final String countryName;
  @override
  @JsonKey()
  final int accounts;

  @override
  String toString() {
    return 'MapItemUIModel(countryName: $countryName, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapItemUIModel &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.accounts, accounts) ||
                other.accounts == accounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryName, accounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapItemUIModelCopyWith<_$_MapItemUIModel> get copyWith =>
      __$$_MapItemUIModelCopyWithImpl<_$_MapItemUIModel>(this, _$identity);
}

abstract class _MapItemUIModel implements MapItemUIModel {
  const factory _MapItemUIModel(
      {required final String countryName,
      final int accounts}) = _$_MapItemUIModel;

  @override
  String get countryName;
  @override
  int get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_MapItemUIModelCopyWith<_$_MapItemUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
