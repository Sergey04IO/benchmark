// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picked_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickedFileModel<T> {
  PlatformFile? get pickedFile => throw _privateConstructorUsedError;
  T? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickedFileModelCopyWith<T, PickedFileModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickedFileModelCopyWith<T, $Res> {
  factory $PickedFileModelCopyWith(
          PickedFileModel<T> value, $Res Function(PickedFileModel<T>) then) =
      _$PickedFileModelCopyWithImpl<T, $Res, PickedFileModel<T>>;
  @useResult
  $Res call({PlatformFile? pickedFile, T? file});
}

/// @nodoc
class _$PickedFileModelCopyWithImpl<T, $Res, $Val extends PickedFileModel<T>>
    implements $PickedFileModelCopyWith<T, $Res> {
  _$PickedFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickedFileModelCopyWith<T, $Res>
    implements $PickedFileModelCopyWith<T, $Res> {
  factory _$$_PickedFileModelCopyWith(_$_PickedFileModel<T> value,
          $Res Function(_$_PickedFileModel<T>) then) =
      __$$_PickedFileModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({PlatformFile? pickedFile, T? file});
}

/// @nodoc
class __$$_PickedFileModelCopyWithImpl<T, $Res>
    extends _$PickedFileModelCopyWithImpl<T, $Res, _$_PickedFileModel<T>>
    implements _$$_PickedFileModelCopyWith<T, $Res> {
  __$$_PickedFileModelCopyWithImpl(
      _$_PickedFileModel<T> _value, $Res Function(_$_PickedFileModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? file = freezed,
  }) {
    return _then(_$_PickedFileModel<T>(
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_PickedFileModel<T> implements _PickedFileModel<T> {
  const _$_PickedFileModel({this.pickedFile, this.file});

  @override
  final PlatformFile? pickedFile;
  @override
  final T? file;

  @override
  String toString() {
    return 'PickedFileModel<$T>(pickedFile: $pickedFile, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickedFileModel<T> &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pickedFile, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickedFileModelCopyWith<T, _$_PickedFileModel<T>> get copyWith =>
      __$$_PickedFileModelCopyWithImpl<T, _$_PickedFileModel<T>>(
          this, _$identity);
}

abstract class _PickedFileModel<T> implements PickedFileModel<T> {
  const factory _PickedFileModel(
      {final PlatformFile? pickedFile, final T? file}) = _$_PickedFileModel<T>;

  @override
  PlatformFile? get pickedFile;
  @override
  T? get file;
  @override
  @JsonKey(ignore: true)
  _$$_PickedFileModelCopyWith<T, _$_PickedFileModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
