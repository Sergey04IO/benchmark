// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demographics_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DemographicsHelpModel {
  List<DemographicsClusterHelpModel> get clusters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemographicsHelpModelCopyWith<DemographicsHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicsHelpModelCopyWith<$Res> {
  factory $DemographicsHelpModelCopyWith(DemographicsHelpModel value,
          $Res Function(DemographicsHelpModel) then) =
      _$DemographicsHelpModelCopyWithImpl<$Res, DemographicsHelpModel>;
  @useResult
  $Res call({List<DemographicsClusterHelpModel> clusters});
}

/// @nodoc
class _$DemographicsHelpModelCopyWithImpl<$Res,
        $Val extends DemographicsHelpModel>
    implements $DemographicsHelpModelCopyWith<$Res> {
  _$DemographicsHelpModelCopyWithImpl(this._value, this._then);

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
              as List<DemographicsClusterHelpModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemographicsHelpModelImplCopyWith<$Res>
    implements $DemographicsHelpModelCopyWith<$Res> {
  factory _$$DemographicsHelpModelImplCopyWith(
          _$DemographicsHelpModelImpl value,
          $Res Function(_$DemographicsHelpModelImpl) then) =
      __$$DemographicsHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DemographicsClusterHelpModel> clusters});
}

/// @nodoc
class __$$DemographicsHelpModelImplCopyWithImpl<$Res>
    extends _$DemographicsHelpModelCopyWithImpl<$Res,
        _$DemographicsHelpModelImpl>
    implements _$$DemographicsHelpModelImplCopyWith<$Res> {
  __$$DemographicsHelpModelImplCopyWithImpl(_$DemographicsHelpModelImpl _value,
      $Res Function(_$DemographicsHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clusters = null,
  }) {
    return _then(_$DemographicsHelpModelImpl(
      clusters: null == clusters
          ? _value._clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<DemographicsClusterHelpModel>,
    ));
  }
}

/// @nodoc

class _$DemographicsHelpModelImpl implements _DemographicsHelpModel {
  const _$DemographicsHelpModelImpl(
      {final List<DemographicsClusterHelpModel> clusters = const []})
      : _clusters = clusters;

  final List<DemographicsClusterHelpModel> _clusters;
  @override
  @JsonKey()
  List<DemographicsClusterHelpModel> get clusters {
    if (_clusters is EqualUnmodifiableListView) return _clusters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clusters);
  }

  @override
  String toString() {
    return 'DemographicsHelpModel(clusters: $clusters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemographicsHelpModelImpl &&
            const DeepCollectionEquality().equals(other._clusters, _clusters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clusters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemographicsHelpModelImplCopyWith<_$DemographicsHelpModelImpl>
      get copyWith => __$$DemographicsHelpModelImplCopyWithImpl<
          _$DemographicsHelpModelImpl>(this, _$identity);
}

abstract class _DemographicsHelpModel implements DemographicsHelpModel {
  const factory _DemographicsHelpModel(
          {final List<DemographicsClusterHelpModel> clusters}) =
      _$DemographicsHelpModelImpl;

  @override
  List<DemographicsClusterHelpModel> get clusters;
  @override
  @JsonKey(ignore: true)
  _$$DemographicsHelpModelImplCopyWith<_$DemographicsHelpModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DemographicsClusterHelpModel {
  String? get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  List<DemographicsItemHelpModel> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemographicsClusterHelpModelCopyWith<DemographicsClusterHelpModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicsClusterHelpModelCopyWith<$Res> {
  factory $DemographicsClusterHelpModelCopyWith(
          DemographicsClusterHelpModel value,
          $Res Function(DemographicsClusterHelpModel) then) =
      _$DemographicsClusterHelpModelCopyWithImpl<$Res,
          DemographicsClusterHelpModel>;
  @useResult
  $Res call(
      {String? name, Color? color, List<DemographicsItemHelpModel> items});
}

/// @nodoc
class _$DemographicsClusterHelpModelCopyWithImpl<$Res,
        $Val extends DemographicsClusterHelpModel>
    implements $DemographicsClusterHelpModelCopyWith<$Res> {
  _$DemographicsClusterHelpModelCopyWithImpl(this._value, this._then);

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
              as List<DemographicsItemHelpModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemographicsClusterHelpModelImplCopyWith<$Res>
    implements $DemographicsClusterHelpModelCopyWith<$Res> {
  factory _$$DemographicsClusterHelpModelImplCopyWith(
          _$DemographicsClusterHelpModelImpl value,
          $Res Function(_$DemographicsClusterHelpModelImpl) then) =
      __$$DemographicsClusterHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, Color? color, List<DemographicsItemHelpModel> items});
}

/// @nodoc
class __$$DemographicsClusterHelpModelImplCopyWithImpl<$Res>
    extends _$DemographicsClusterHelpModelCopyWithImpl<$Res,
        _$DemographicsClusterHelpModelImpl>
    implements _$$DemographicsClusterHelpModelImplCopyWith<$Res> {
  __$$DemographicsClusterHelpModelImplCopyWithImpl(
      _$DemographicsClusterHelpModelImpl _value,
      $Res Function(_$DemographicsClusterHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? items = null,
  }) {
    return _then(_$DemographicsClusterHelpModelImpl(
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
              as List<DemographicsItemHelpModel>,
    ));
  }
}

/// @nodoc

class _$DemographicsClusterHelpModelImpl
    implements _DemographicsClusterHelpModel {
  const _$DemographicsClusterHelpModelImpl(
      {this.name,
      this.color,
      final List<DemographicsItemHelpModel> items = const []})
      : _items = items;

  @override
  final String? name;
  @override
  final Color? color;
  final List<DemographicsItemHelpModel> _items;
  @override
  @JsonKey()
  List<DemographicsItemHelpModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DemographicsClusterHelpModel(name: $name, color: $color, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemographicsClusterHelpModelImpl &&
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
  _$$DemographicsClusterHelpModelImplCopyWith<
          _$DemographicsClusterHelpModelImpl>
      get copyWith => __$$DemographicsClusterHelpModelImplCopyWithImpl<
          _$DemographicsClusterHelpModelImpl>(this, _$identity);
}

abstract class _DemographicsClusterHelpModel
    implements DemographicsClusterHelpModel {
  const factory _DemographicsClusterHelpModel(
          {final String? name,
          final Color? color,
          final List<DemographicsItemHelpModel> items}) =
      _$DemographicsClusterHelpModelImpl;

  @override
  String? get name;
  @override
  Color? get color;
  @override
  List<DemographicsItemHelpModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$DemographicsClusterHelpModelImplCopyWith<
          _$DemographicsClusterHelpModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DemographicsItemHelpModel {
  String? get category => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DemographicsItemHelpModelCopyWith<DemographicsItemHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicsItemHelpModelCopyWith<$Res> {
  factory $DemographicsItemHelpModelCopyWith(DemographicsItemHelpModel value,
          $Res Function(DemographicsItemHelpModel) then) =
      _$DemographicsItemHelpModelCopyWithImpl<$Res, DemographicsItemHelpModel>;
  @useResult
  $Res call({String? category, num? value});
}

/// @nodoc
class _$DemographicsItemHelpModelCopyWithImpl<$Res,
        $Val extends DemographicsItemHelpModel>
    implements $DemographicsItemHelpModelCopyWith<$Res> {
  _$DemographicsItemHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemographicsItemHelpModelImplCopyWith<$Res>
    implements $DemographicsItemHelpModelCopyWith<$Res> {
  factory _$$DemographicsItemHelpModelImplCopyWith(
          _$DemographicsItemHelpModelImpl value,
          $Res Function(_$DemographicsItemHelpModelImpl) then) =
      __$$DemographicsItemHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? category, num? value});
}

/// @nodoc
class __$$DemographicsItemHelpModelImplCopyWithImpl<$Res>
    extends _$DemographicsItemHelpModelCopyWithImpl<$Res,
        _$DemographicsItemHelpModelImpl>
    implements _$$DemographicsItemHelpModelImplCopyWith<$Res> {
  __$$DemographicsItemHelpModelImplCopyWithImpl(
      _$DemographicsItemHelpModelImpl _value,
      $Res Function(_$DemographicsItemHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? value = freezed,
  }) {
    return _then(_$DemographicsItemHelpModelImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$DemographicsItemHelpModelImpl implements _DemographicsItemHelpModel {
  const _$DemographicsItemHelpModelImpl({this.category, this.value});

  @override
  final String? category;
  @override
  final num? value;

  @override
  String toString() {
    return 'DemographicsItemHelpModel(category: $category, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemographicsItemHelpModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemographicsItemHelpModelImplCopyWith<_$DemographicsItemHelpModelImpl>
      get copyWith => __$$DemographicsItemHelpModelImplCopyWithImpl<
          _$DemographicsItemHelpModelImpl>(this, _$identity);
}

abstract class _DemographicsItemHelpModel implements DemographicsItemHelpModel {
  const factory _DemographicsItemHelpModel(
      {final String? category,
      final num? value}) = _$DemographicsItemHelpModelImpl;

  @override
  String? get category;
  @override
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$DemographicsItemHelpModelImplCopyWith<_$DemographicsItemHelpModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
