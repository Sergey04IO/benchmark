// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndexHelpModel {
  String? get title => throw _privateConstructorUsedError;
  List<num> get barValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndexHelpModelCopyWith<IndexHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexHelpModelCopyWith<$Res> {
  factory $IndexHelpModelCopyWith(
          IndexHelpModel value, $Res Function(IndexHelpModel) then) =
      _$IndexHelpModelCopyWithImpl<$Res, IndexHelpModel>;
  @useResult
  $Res call({String? title, List<num> barValues});
}

/// @nodoc
class _$IndexHelpModelCopyWithImpl<$Res, $Val extends IndexHelpModel>
    implements $IndexHelpModelCopyWith<$Res> {
  _$IndexHelpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? barValues = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      barValues: null == barValues
          ? _value.barValues
          : barValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IndexHelpModelCopyWith<$Res>
    implements $IndexHelpModelCopyWith<$Res> {
  factory _$$_IndexHelpModelCopyWith(
          _$_IndexHelpModel value, $Res Function(_$_IndexHelpModel) then) =
      __$$_IndexHelpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<num> barValues});
}

/// @nodoc
class __$$_IndexHelpModelCopyWithImpl<$Res>
    extends _$IndexHelpModelCopyWithImpl<$Res, _$_IndexHelpModel>
    implements _$$_IndexHelpModelCopyWith<$Res> {
  __$$_IndexHelpModelCopyWithImpl(
      _$_IndexHelpModel _value, $Res Function(_$_IndexHelpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? barValues = null,
  }) {
    return _then(_$_IndexHelpModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      barValues: null == barValues
          ? _value._barValues
          : barValues // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc

class _$_IndexHelpModel implements _IndexHelpModel {
  const _$_IndexHelpModel({this.title, final List<num> barValues = const []})
      : _barValues = barValues;

  @override
  final String? title;
  final List<num> _barValues;
  @override
  @JsonKey()
  List<num> get barValues {
    if (_barValues is EqualUnmodifiableListView) return _barValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barValues);
  }

  @override
  String toString() {
    return 'IndexHelpModel(title: $title, barValues: $barValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndexHelpModel &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._barValues, _barValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_barValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndexHelpModelCopyWith<_$_IndexHelpModel> get copyWith =>
      __$$_IndexHelpModelCopyWithImpl<_$_IndexHelpModel>(this, _$identity);
}

abstract class _IndexHelpModel implements IndexHelpModel {
  const factory _IndexHelpModel(
      {final String? title, final List<num> barValues}) = _$_IndexHelpModel;

  @override
  String? get title;
  @override
  List<num> get barValues;
  @override
  @JsonKey(ignore: true)
  _$$_IndexHelpModelCopyWith<_$_IndexHelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
