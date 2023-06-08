// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapHelpModel {
  List<MapItemModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapHelpModelCopyWith<MapHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapHelpModelCopyWith<$Res> {
  factory $MapHelpModelCopyWith(
          MapHelpModel value, $Res Function(MapHelpModel) then) =
      _$MapHelpModelCopyWithImpl<$Res, MapHelpModel>;
  @useResult
  $Res call({List<MapItemModel> items});
}

/// @nodoc
class _$MapHelpModelCopyWithImpl<$Res, $Val extends MapHelpModel>
    implements $MapHelpModelCopyWith<$Res> {
  _$MapHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MapItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapHelpModelCopyWith<$Res>
    implements $MapHelpModelCopyWith<$Res> {
  factory _$$_MapHelpModelCopyWith(
          _$_MapHelpModel value, $Res Function(_$_MapHelpModel) then) =
      __$$_MapHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MapItemModel> items});
}

/// @nodoc
class __$$_MapHelpModelCopyWithImpl<$Res>
    extends _$MapHelpModelCopyWithImpl<$Res, _$_MapHelpModel>
    implements _$$_MapHelpModelCopyWith<$Res> {
  __$$_MapHelpModelCopyWithImpl(
      _$_MapHelpModel _value, $Res Function(_$_MapHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_MapHelpModel(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MapItemModel>,
    ));
  }
}

/// @nodoc

class _$_MapHelpModel implements _MapHelpModel {
  const _$_MapHelpModel({final List<MapItemModel> items = const []})
      : _items = items;

  final List<MapItemModel> _items;
  @override
  @JsonKey()
  List<MapItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MapHelpModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapHelpModel &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapHelpModelCopyWith<_$_MapHelpModel> get copyWith =>
      __$$_MapHelpModelCopyWithImpl<_$_MapHelpModel>(this, _$identity);
}

abstract class _MapHelpModel implements MapHelpModel {
  const factory _MapHelpModel({final List<MapItemModel> items}) =
      _$_MapHelpModel;

  @override
  List<MapItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_MapHelpModelCopyWith<_$_MapHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapItemModel {
  String get countryName => throw _privateConstructorUsedError;
  int get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapItemModelCopyWith<MapItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapItemModelCopyWith<$Res> {
  factory $MapItemModelCopyWith(
          MapItemModel value, $Res Function(MapItemModel) then) =
      _$MapItemModelCopyWithImpl<$Res, MapItemModel>;
  @useResult
  $Res call({String countryName, int accounts});
}

/// @nodoc
class _$MapItemModelCopyWithImpl<$Res, $Val extends MapItemModel>
    implements $MapItemModelCopyWith<$Res> {
  _$MapItemModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_MapItemModelCopyWith<$Res>
    implements $MapItemModelCopyWith<$Res> {
  factory _$$_MapItemModelCopyWith(
          _$_MapItemModel value, $Res Function(_$_MapItemModel) then) =
      __$$_MapItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryName, int accounts});
}

/// @nodoc
class __$$_MapItemModelCopyWithImpl<$Res>
    extends _$MapItemModelCopyWithImpl<$Res, _$_MapItemModel>
    implements _$$_MapItemModelCopyWith<$Res> {
  __$$_MapItemModelCopyWithImpl(
      _$_MapItemModel _value, $Res Function(_$_MapItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? accounts = null,
  }) {
    return _then(_$_MapItemModel(
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

class _$_MapItemModel implements _MapItemModel {
  const _$_MapItemModel({required this.countryName, this.accounts = 0});

  @override
  final String countryName;
  @override
  @JsonKey()
  final int accounts;

  @override
  String toString() {
    return 'MapItemModel(countryName: $countryName, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapItemModel &&
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
  _$$_MapItemModelCopyWith<_$_MapItemModel> get copyWith =>
      __$$_MapItemModelCopyWithImpl<_$_MapItemModel>(this, _$identity);
}

abstract class _MapItemModel implements MapItemModel {
  const factory _MapItemModel(
      {required final String countryName,
      final int accounts}) = _$_MapItemModel;

  @override
  String get countryName;
  @override
  int get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_MapItemModelCopyWith<_$_MapItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
