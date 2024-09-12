// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_center_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommandCenterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCenterStateCopyWith<$Res> {
  factory $CommandCenterStateCopyWith(
          CommandCenterState value, $Res Function(CommandCenterState) then) =
      _$CommandCenterStateCopyWithImpl<$Res, CommandCenterState>;
}

/// @nodoc
class _$CommandCenterStateCopyWithImpl<$Res, $Val extends CommandCenterState>
    implements $CommandCenterStateCopyWith<$Res> {
  _$CommandCenterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommandCenterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CommandCenterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommandCenterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CommandCenterStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CommandCenterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CommandCenterState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Sample sample});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$CommandCenterStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sample = null,
  }) {
    return _then(_$DataImpl(
      null == sample
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as Sample,
    ));
  }
}

/// @nodoc

class _$DataImpl implements Data {
  const _$DataImpl(this.sample);

  @override
  final Sample sample;

  @override
  String toString() {
    return 'CommandCenterState.data(sample: $sample)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sample, sample) || other.sample == sample));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sample);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) {
    return data(sample);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) {
    return data?.call(sample);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(sample);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements CommandCenterState {
  const factory Data(final Sample sample) = _$DataImpl;

  Sample get sample;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CommandCenterStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommandCenterState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CommandCenterState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearStateImplCopyWith<$Res> {
  factory _$$ClearStateImplCopyWith(
          _$ClearStateImpl value, $Res Function(_$ClearStateImpl) then) =
      __$$ClearStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearStateImplCopyWithImpl<$Res>
    extends _$CommandCenterStateCopyWithImpl<$Res, _$ClearStateImpl>
    implements _$$ClearStateImplCopyWith<$Res> {
  __$$ClearStateImplCopyWithImpl(
      _$ClearStateImpl _value, $Res Function(_$ClearStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearStateImpl implements _ClearState {
  const _$ClearStateImpl();

  @override
  String toString() {
    return 'CommandCenterState.clearState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sample sample) data,
    required TResult Function(String error) error,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Sample sample)? data,
    TResult? Function(String error)? error,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sample sample)? data,
    TResult Function(String error)? error,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_ClearState value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Data value)? data,
    TResult? Function(_Error value)? error,
    TResult? Function(_ClearState value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class _ClearState implements CommandCenterState {
  const factory _ClearState() = _$ClearStateImpl;
}
