// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'views_per_user_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewsPerUserHelpModel {
  List<ViewsPerUserClusterModel> get clusters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewsPerUserHelpModelCopyWith<ViewsPerUserHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewsPerUserHelpModelCopyWith<$Res> {
  factory $ViewsPerUserHelpModelCopyWith(ViewsPerUserHelpModel value,
          $Res Function(ViewsPerUserHelpModel) then) =
      _$ViewsPerUserHelpModelCopyWithImpl<$Res, ViewsPerUserHelpModel>;
  @useResult
  $Res call({List<ViewsPerUserClusterModel> clusters});
}

/// @nodoc
class _$ViewsPerUserHelpModelCopyWithImpl<$Res,
        $Val extends ViewsPerUserHelpModel>
    implements $ViewsPerUserHelpModelCopyWith<$Res> {
  _$ViewsPerUserHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clusters = null,
  }) {
    return _then(_value.copyWith(
      clusters: null == clusters
          ? _value.clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<ViewsPerUserClusterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewsPerUserHelpModelCopyWith<$Res>
    implements $ViewsPerUserHelpModelCopyWith<$Res> {
  factory _$$_ViewsPerUserHelpModelCopyWith(_$_ViewsPerUserHelpModel value,
          $Res Function(_$_ViewsPerUserHelpModel) then) =
      __$$_ViewsPerUserHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ViewsPerUserClusterModel> clusters});
}

/// @nodoc
class __$$_ViewsPerUserHelpModelCopyWithImpl<$Res>
    extends _$ViewsPerUserHelpModelCopyWithImpl<$Res, _$_ViewsPerUserHelpModel>
    implements _$$_ViewsPerUserHelpModelCopyWith<$Res> {
  __$$_ViewsPerUserHelpModelCopyWithImpl(_$_ViewsPerUserHelpModel _value,
      $Res Function(_$_ViewsPerUserHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clusters = null,
  }) {
    return _then(_$_ViewsPerUserHelpModel(
      clusters: null == clusters
          ? _value._clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<ViewsPerUserClusterModel>,
    ));
  }
}

/// @nodoc

class _$_ViewsPerUserHelpModel implements _ViewsPerUserHelpModel {
  const _$_ViewsPerUserHelpModel(
      {final List<ViewsPerUserClusterModel> clusters = const []})
      : _clusters = clusters;

  final List<ViewsPerUserClusterModel> _clusters;
  @override
  @JsonKey()
  List<ViewsPerUserClusterModel> get clusters {
    if (_clusters is EqualUnmodifiableListView) return _clusters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clusters);
  }

  @override
  String toString() {
    return 'ViewsPerUserHelpModel(clusters: $clusters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewsPerUserHelpModel &&
            const DeepCollectionEquality().equals(other._clusters, _clusters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clusters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewsPerUserHelpModelCopyWith<_$_ViewsPerUserHelpModel> get copyWith =>
      __$$_ViewsPerUserHelpModelCopyWithImpl<_$_ViewsPerUserHelpModel>(
          this, _$identity);
}

abstract class _ViewsPerUserHelpModel implements ViewsPerUserHelpModel {
  const factory _ViewsPerUserHelpModel(
          {final List<ViewsPerUserClusterModel> clusters}) =
      _$_ViewsPerUserHelpModel;

  @override
  List<ViewsPerUserClusterModel> get clusters;
  @override
  @JsonKey(ignore: true)
  _$$_ViewsPerUserHelpModelCopyWith<_$_ViewsPerUserHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewsPerUserClusterModel {
  String? get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  List<ViewsPerUserItemModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewsPerUserClusterModelCopyWith<ViewsPerUserClusterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewsPerUserClusterModelCopyWith<$Res> {
  factory $ViewsPerUserClusterModelCopyWith(ViewsPerUserClusterModel value,
          $Res Function(ViewsPerUserClusterModel) then) =
      _$ViewsPerUserClusterModelCopyWithImpl<$Res, ViewsPerUserClusterModel>;
  @useResult
  $Res call({String? name, Color? color, List<ViewsPerUserItemModel> items});
}

/// @nodoc
class _$ViewsPerUserClusterModelCopyWithImpl<$Res,
        $Val extends ViewsPerUserClusterModel>
    implements $ViewsPerUserClusterModelCopyWith<$Res> {
  _$ViewsPerUserClusterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ViewsPerUserItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewsPerUserClusterModelCopyWith<$Res>
    implements $ViewsPerUserClusterModelCopyWith<$Res> {
  factory _$$_ViewsPerUserClusterModelCopyWith(
          _$_ViewsPerUserClusterModel value,
          $Res Function(_$_ViewsPerUserClusterModel) then) =
      __$$_ViewsPerUserClusterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Color? color, List<ViewsPerUserItemModel> items});
}

/// @nodoc
class __$$_ViewsPerUserClusterModelCopyWithImpl<$Res>
    extends _$ViewsPerUserClusterModelCopyWithImpl<$Res,
        _$_ViewsPerUserClusterModel>
    implements _$$_ViewsPerUserClusterModelCopyWith<$Res> {
  __$$_ViewsPerUserClusterModelCopyWithImpl(_$_ViewsPerUserClusterModel _value,
      $Res Function(_$_ViewsPerUserClusterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? items = null,
  }) {
    return _then(_$_ViewsPerUserClusterModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ViewsPerUserItemModel>,
    ));
  }
}

/// @nodoc

class _$_ViewsPerUserClusterModel extends _ViewsPerUserClusterModel {
  const _$_ViewsPerUserClusterModel(
      {this.name,
      this.color,
      final List<ViewsPerUserItemModel> items = const []})
      : _items = items,
        super._();

  @override
  final String? name;
  @override
  final Color? color;
  final List<ViewsPerUserItemModel> _items;
  @override
  @JsonKey()
  List<ViewsPerUserItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ViewsPerUserClusterModel(name: $name, color: $color, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewsPerUserClusterModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, color, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewsPerUserClusterModelCopyWith<_$_ViewsPerUserClusterModel>
      get copyWith => __$$_ViewsPerUserClusterModelCopyWithImpl<
          _$_ViewsPerUserClusterModel>(this, _$identity);
}

abstract class _ViewsPerUserClusterModel extends ViewsPerUserClusterModel {
  const factory _ViewsPerUserClusterModel(
      {final String? name,
      final Color? color,
      final List<ViewsPerUserItemModel> items}) = _$_ViewsPerUserClusterModel;
  const _ViewsPerUserClusterModel._() : super._();

  @override
  String? get name;
  @override
  Color? get color;
  @override
  List<ViewsPerUserItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ViewsPerUserClusterModelCopyWith<_$_ViewsPerUserClusterModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewsPerUserItemModel {
  double? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewsPerUserItemModelCopyWith<ViewsPerUserItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewsPerUserItemModelCopyWith<$Res> {
  factory $ViewsPerUserItemModelCopyWith(ViewsPerUserItemModel value,
          $Res Function(ViewsPerUserItemModel) then) =
      _$ViewsPerUserItemModelCopyWithImpl<$Res, ViewsPerUserItemModel>;
  @useResult
  $Res call({double? value});
}

/// @nodoc
class _$ViewsPerUserItemModelCopyWithImpl<$Res,
        $Val extends ViewsPerUserItemModel>
    implements $ViewsPerUserItemModelCopyWith<$Res> {
  _$ViewsPerUserItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewsPerUserItemModelCopyWith<$Res>
    implements $ViewsPerUserItemModelCopyWith<$Res> {
  factory _$$_ViewsPerUserItemModelCopyWith(_$_ViewsPerUserItemModel value,
          $Res Function(_$_ViewsPerUserItemModel) then) =
      __$$_ViewsPerUserItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? value});
}

/// @nodoc
class __$$_ViewsPerUserItemModelCopyWithImpl<$Res>
    extends _$ViewsPerUserItemModelCopyWithImpl<$Res, _$_ViewsPerUserItemModel>
    implements _$$_ViewsPerUserItemModelCopyWith<$Res> {
  __$$_ViewsPerUserItemModelCopyWithImpl(_$_ViewsPerUserItemModel _value,
      $Res Function(_$_ViewsPerUserItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ViewsPerUserItemModel(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ViewsPerUserItemModel implements _ViewsPerUserItemModel {
  const _$_ViewsPerUserItemModel({this.value});

  @override
  final double? value;

  @override
  String toString() {
    return 'ViewsPerUserItemModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewsPerUserItemModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewsPerUserItemModelCopyWith<_$_ViewsPerUserItemModel> get copyWith =>
      __$$_ViewsPerUserItemModelCopyWithImpl<_$_ViewsPerUserItemModel>(
          this, _$identity);
}

abstract class _ViewsPerUserItemModel implements ViewsPerUserItemModel {
  const factory _ViewsPerUserItemModel({final double? value}) =
      _$_ViewsPerUserItemModel;

  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ViewsPerUserItemModelCopyWith<_$_ViewsPerUserItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
