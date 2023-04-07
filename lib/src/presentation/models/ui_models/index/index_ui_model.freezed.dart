// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndexUIModel {
  String? get title => throw _privateConstructorUsedError;
  List<num> get barValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndexUIModelCopyWith<IndexUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexUIModelCopyWith<$Res> {
  factory $IndexUIModelCopyWith(
          IndexUIModel value, $Res Function(IndexUIModel) then) =
      _$IndexUIModelCopyWithImpl<$Res, IndexUIModel>;
  @useResult
  $Res call({String? title, List<num> barValues});
}

/// @nodoc
class _$IndexUIModelCopyWithImpl<$Res, $Val extends IndexUIModel>
    implements $IndexUIModelCopyWith<$Res> {
  _$IndexUIModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_IndexUIModelCopyWith<$Res>
    implements $IndexUIModelCopyWith<$Res> {
  factory _$$_IndexUIModelCopyWith(
          _$_IndexUIModel value, $Res Function(_$_IndexUIModel) then) =
      __$$_IndexUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<num> barValues});
}

/// @nodoc
class __$$_IndexUIModelCopyWithImpl<$Res>
    extends _$IndexUIModelCopyWithImpl<$Res, _$_IndexUIModel>
    implements _$$_IndexUIModelCopyWith<$Res> {
  __$$_IndexUIModelCopyWithImpl(
      _$_IndexUIModel _value, $Res Function(_$_IndexUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? barValues = null,
  }) {
    return _then(_$_IndexUIModel(
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

class _$_IndexUIModel implements _IndexUIModel {
  const _$_IndexUIModel({this.title, final List<num> barValues = const []})
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
    return 'IndexUIModel(title: $title, barValues: $barValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndexUIModel &&
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
  _$$_IndexUIModelCopyWith<_$_IndexUIModel> get copyWith =>
      __$$_IndexUIModelCopyWithImpl<_$_IndexUIModel>(this, _$identity);
}

abstract class _IndexUIModel implements IndexUIModel {
  const factory _IndexUIModel(
      {final String? title, final List<num> barValues}) = _$_IndexUIModel;

  @override
  String? get title;
  @override
  List<num> get barValues;
  @override
  @JsonKey(ignore: true)
  _$$_IndexUIModelCopyWith<_$_IndexUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
