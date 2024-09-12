// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_chart_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiChartHelpModel {
  List<MultiChartItemModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultiChartHelpModelCopyWith<MultiChartHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiChartHelpModelCopyWith<$Res> {
  factory $MultiChartHelpModelCopyWith(
          MultiChartHelpModel value, $Res Function(MultiChartHelpModel) then) =
      _$MultiChartHelpModelCopyWithImpl<$Res, MultiChartHelpModel>;
  @useResult
  $Res call({List<MultiChartItemModel> items});
}

/// @nodoc
class _$MultiChartHelpModelCopyWithImpl<$Res, $Val extends MultiChartHelpModel>
    implements $MultiChartHelpModelCopyWith<$Res> {
  _$MultiChartHelpModelCopyWithImpl(this._value, this._then);

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
              as List<MultiChartItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiChartHelpModelImplCopyWith<$Res>
    implements $MultiChartHelpModelCopyWith<$Res> {
  factory _$$MultiChartHelpModelImplCopyWith(_$MultiChartHelpModelImpl value,
          $Res Function(_$MultiChartHelpModelImpl) then) =
      __$$MultiChartHelpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MultiChartItemModel> items});
}

/// @nodoc
class __$$MultiChartHelpModelImplCopyWithImpl<$Res>
    extends _$MultiChartHelpModelCopyWithImpl<$Res, _$MultiChartHelpModelImpl>
    implements _$$MultiChartHelpModelImplCopyWith<$Res> {
  __$$MultiChartHelpModelImplCopyWithImpl(_$MultiChartHelpModelImpl _value,
      $Res Function(_$MultiChartHelpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$MultiChartHelpModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MultiChartItemModel>,
    ));
  }
}

/// @nodoc

class _$MultiChartHelpModelImpl extends _MultiChartHelpModel {
  const _$MultiChartHelpModelImpl(
      {final List<MultiChartItemModel> items = const []})
      : _items = items,
        super._();

  final List<MultiChartItemModel> _items;
  @override
  @JsonKey()
  List<MultiChartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MultiChartHelpModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiChartHelpModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiChartHelpModelImplCopyWith<_$MultiChartHelpModelImpl> get copyWith =>
      __$$MultiChartHelpModelImplCopyWithImpl<_$MultiChartHelpModelImpl>(
          this, _$identity);
}

abstract class _MultiChartHelpModel extends MultiChartHelpModel {
  const factory _MultiChartHelpModel({final List<MultiChartItemModel> items}) =
      _$MultiChartHelpModelImpl;
  const _MultiChartHelpModel._() : super._();

  @override
  List<MultiChartItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$MultiChartHelpModelImplCopyWith<_$MultiChartHelpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MultiChartItemModel {
  DateTime? get x => throw _privateConstructorUsedError;
  double get barY => throw _privateConstructorUsedError;
  double get lineY1 => throw _privateConstructorUsedError;
  double get lineY2 => throw _privateConstructorUsedError;
  double get lineY3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultiChartItemModelCopyWith<MultiChartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiChartItemModelCopyWith<$Res> {
  factory $MultiChartItemModelCopyWith(
          MultiChartItemModel value, $Res Function(MultiChartItemModel) then) =
      _$MultiChartItemModelCopyWithImpl<$Res, MultiChartItemModel>;
  @useResult
  $Res call(
      {DateTime? x, double barY, double lineY1, double lineY2, double lineY3});
}

/// @nodoc
class _$MultiChartItemModelCopyWithImpl<$Res, $Val extends MultiChartItemModel>
    implements $MultiChartItemModelCopyWith<$Res> {
  _$MultiChartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? barY = null,
    Object? lineY1 = null,
    Object? lineY2 = null,
    Object? lineY3 = null,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      barY: null == barY
          ? _value.barY
          : barY // ignore: cast_nullable_to_non_nullable
              as double,
      lineY1: null == lineY1
          ? _value.lineY1
          : lineY1 // ignore: cast_nullable_to_non_nullable
              as double,
      lineY2: null == lineY2
          ? _value.lineY2
          : lineY2 // ignore: cast_nullable_to_non_nullable
              as double,
      lineY3: null == lineY3
          ? _value.lineY3
          : lineY3 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiChartItemModelImplCopyWith<$Res>
    implements $MultiChartItemModelCopyWith<$Res> {
  factory _$$MultiChartItemModelImplCopyWith(_$MultiChartItemModelImpl value,
          $Res Function(_$MultiChartItemModelImpl) then) =
      __$$MultiChartItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? x, double barY, double lineY1, double lineY2, double lineY3});
}

/// @nodoc
class __$$MultiChartItemModelImplCopyWithImpl<$Res>
    extends _$MultiChartItemModelCopyWithImpl<$Res, _$MultiChartItemModelImpl>
    implements _$$MultiChartItemModelImplCopyWith<$Res> {
  __$$MultiChartItemModelImplCopyWithImpl(_$MultiChartItemModelImpl _value,
      $Res Function(_$MultiChartItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? barY = null,
    Object? lineY1 = null,
    Object? lineY2 = null,
    Object? lineY3 = null,
  }) {
    return _then(_$MultiChartItemModelImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      barY: null == barY
          ? _value.barY
          : barY // ignore: cast_nullable_to_non_nullable
              as double,
      lineY1: null == lineY1
          ? _value.lineY1
          : lineY1 // ignore: cast_nullable_to_non_nullable
              as double,
      lineY2: null == lineY2
          ? _value.lineY2
          : lineY2 // ignore: cast_nullable_to_non_nullable
              as double,
      lineY3: null == lineY3
          ? _value.lineY3
          : lineY3 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MultiChartItemModelImpl implements _MultiChartItemModel {
  const _$MultiChartItemModelImpl(
      {this.x,
      this.barY = 0.0,
      this.lineY1 = 0.0,
      this.lineY2 = 0.0,
      this.lineY3 = 0.0});

  @override
  final DateTime? x;
  @override
  @JsonKey()
  final double barY;
  @override
  @JsonKey()
  final double lineY1;
  @override
  @JsonKey()
  final double lineY2;
  @override
  @JsonKey()
  final double lineY3;

  @override
  String toString() {
    return 'MultiChartItemModel(x: $x, barY: $barY, lineY1: $lineY1, lineY2: $lineY2, lineY3: $lineY3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiChartItemModelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.barY, barY) || other.barY == barY) &&
            (identical(other.lineY1, lineY1) || other.lineY1 == lineY1) &&
            (identical(other.lineY2, lineY2) || other.lineY2 == lineY2) &&
            (identical(other.lineY3, lineY3) || other.lineY3 == lineY3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, barY, lineY1, lineY2, lineY3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiChartItemModelImplCopyWith<_$MultiChartItemModelImpl> get copyWith =>
      __$$MultiChartItemModelImplCopyWithImpl<_$MultiChartItemModelImpl>(
          this, _$identity);
}

abstract class _MultiChartItemModel implements MultiChartItemModel {
  const factory _MultiChartItemModel(
      {final DateTime? x,
      final double barY,
      final double lineY1,
      final double lineY2,
      final double lineY3}) = _$MultiChartItemModelImpl;

  @override
  DateTime? get x;
  @override
  double get barY;
  @override
  double get lineY1;
  @override
  double get lineY2;
  @override
  double get lineY3;
  @override
  @JsonKey(ignore: true)
  _$$MultiChartItemModelImplCopyWith<_$MultiChartItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
