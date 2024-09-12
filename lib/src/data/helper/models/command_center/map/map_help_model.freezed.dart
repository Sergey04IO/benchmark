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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$MapHelpModelImplCopyWith<$Res>
    implements $MapHelpModelCopyWith<$Res> {
  factory _$$MapHelpModelImplCopyWith(
          _$MapHelpModelImpl value, $Res Function(_$MapHelpModelImpl) then) =
      __$$MapHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MapItemModel> items});
}

/// @nodoc
class __$$MapHelpModelImplCopyWithImpl<$Res>
    extends _$MapHelpModelCopyWithImpl<$Res, _$MapHelpModelImpl>
    implements _$$MapHelpModelImplCopyWith<$Res> {
  __$$MapHelpModelImplCopyWithImpl(
      _$MapHelpModelImpl _value, $Res Function(_$MapHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$MapHelpModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MapItemModel>,
    ));
  }
}

/// @nodoc

class _$MapHelpModelImpl implements _MapHelpModel {
  const _$MapHelpModelImpl({final List<MapItemModel> items = const []})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapHelpModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapHelpModelImplCopyWith<_$MapHelpModelImpl> get copyWith =>
      __$$MapHelpModelImplCopyWithImpl<_$MapHelpModelImpl>(this, _$identity);
}

abstract class _MapHelpModel implements MapHelpModel {
  const factory _MapHelpModel({final List<MapItemModel> items}) =
      _$MapHelpModelImpl;

  @override
  List<MapItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$MapHelpModelImplCopyWith<_$MapHelpModelImpl> get copyWith =>
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
abstract class _$$MapItemModelImplCopyWith<$Res>
    implements $MapItemModelCopyWith<$Res> {
  factory _$$MapItemModelImplCopyWith(
          _$MapItemModelImpl value, $Res Function(_$MapItemModelImpl) then) =
      __$$MapItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryName, int accounts});
}

/// @nodoc
class __$$MapItemModelImplCopyWithImpl<$Res>
    extends _$MapItemModelCopyWithImpl<$Res, _$MapItemModelImpl>
    implements _$$MapItemModelImplCopyWith<$Res> {
  __$$MapItemModelImplCopyWithImpl(
      _$MapItemModelImpl _value, $Res Function(_$MapItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? accounts = null,
  }) {
    return _then(_$MapItemModelImpl(
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

class _$MapItemModelImpl implements _MapItemModel {
  const _$MapItemModelImpl({required this.countryName, this.accounts = 0});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapItemModelImpl &&
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
  _$$MapItemModelImplCopyWith<_$MapItemModelImpl> get copyWith =>
      __$$MapItemModelImplCopyWithImpl<_$MapItemModelImpl>(this, _$identity);
}

abstract class _MapItemModel implements MapItemModel {
  const factory _MapItemModel(
      {required final String countryName,
      final int accounts}) = _$MapItemModelImpl;

  @override
  String get countryName;
  @override
  int get accounts;
  @override
  @JsonKey(ignore: true)
  _$$MapItemModelImplCopyWith<_$MapItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
