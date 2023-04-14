// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUIModel {
  Map<String, List<TornadoEntity>>? get tornadoData =>
      throw _privateConstructorUsedError;
  Map<String, List<AreaEntity>>? get areasData =>
      throw _privateConstructorUsedError;
  Map<String, SectorOverviewCluster>? get sectorsOverviewData =>
      throw _privateConstructorUsedError;
  Map<String, List<SectorIndexEntity>>? get sectorsIndexData =>
      throw _privateConstructorUsedError;
  String? get selectedDate => throw _privateConstructorUsedError;
  List<String> get dates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUIModelCopyWith<HomeUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUIModelCopyWith<$Res> {
  factory $HomeUIModelCopyWith(
          HomeUIModel value, $Res Function(HomeUIModel) then) =
      _$HomeUIModelCopyWithImpl<$Res, HomeUIModel>;
  @useResult
  $Res call(
      {Map<String, List<TornadoEntity>>? tornadoData,
      Map<String, List<AreaEntity>>? areasData,
      Map<String, SectorOverviewCluster>? sectorsOverviewData,
      Map<String, List<SectorIndexEntity>>? sectorsIndexData,
      String? selectedDate,
      List<String> dates});
}

/// @nodoc
class _$HomeUIModelCopyWithImpl<$Res, $Val extends HomeUIModel>
    implements $HomeUIModelCopyWith<$Res> {
  _$HomeUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tornadoData = freezed,
    Object? areasData = freezed,
    Object? sectorsOverviewData = freezed,
    Object? sectorsIndexData = freezed,
    Object? selectedDate = freezed,
    Object? dates = null,
  }) {
    return _then(_value.copyWith(
      tornadoData: freezed == tornadoData
          ? _value.tornadoData
          : tornadoData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TornadoEntity>>?,
      areasData: freezed == areasData
          ? _value.areasData
          : areasData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<AreaEntity>>?,
      sectorsOverviewData: freezed == sectorsOverviewData
          ? _value.sectorsOverviewData
          : sectorsOverviewData // ignore: cast_nullable_to_non_nullable
              as Map<String, SectorOverviewCluster>?,
      sectorsIndexData: freezed == sectorsIndexData
          ? _value.sectorsIndexData
          : sectorsIndexData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SectorIndexEntity>>?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeUIModelCopyWith<$Res>
    implements $HomeUIModelCopyWith<$Res> {
  factory _$$_HomeUIModelCopyWith(
          _$_HomeUIModel value, $Res Function(_$_HomeUIModel) then) =
      __$$_HomeUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<TornadoEntity>>? tornadoData,
      Map<String, List<AreaEntity>>? areasData,
      Map<String, SectorOverviewCluster>? sectorsOverviewData,
      Map<String, List<SectorIndexEntity>>? sectorsIndexData,
      String? selectedDate,
      List<String> dates});
}

/// @nodoc
class __$$_HomeUIModelCopyWithImpl<$Res>
    extends _$HomeUIModelCopyWithImpl<$Res, _$_HomeUIModel>
    implements _$$_HomeUIModelCopyWith<$Res> {
  __$$_HomeUIModelCopyWithImpl(
      _$_HomeUIModel _value, $Res Function(_$_HomeUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tornadoData = freezed,
    Object? areasData = freezed,
    Object? sectorsOverviewData = freezed,
    Object? sectorsIndexData = freezed,
    Object? selectedDate = freezed,
    Object? dates = null,
  }) {
    return _then(_$_HomeUIModel(
      tornadoData: freezed == tornadoData
          ? _value._tornadoData
          : tornadoData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TornadoEntity>>?,
      areasData: freezed == areasData
          ? _value._areasData
          : areasData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<AreaEntity>>?,
      sectorsOverviewData: freezed == sectorsOverviewData
          ? _value._sectorsOverviewData
          : sectorsOverviewData // ignore: cast_nullable_to_non_nullable
              as Map<String, SectorOverviewCluster>?,
      sectorsIndexData: freezed == sectorsIndexData
          ? _value._sectorsIndexData
          : sectorsIndexData // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SectorIndexEntity>>?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_HomeUIModel implements _HomeUIModel {
  const _$_HomeUIModel(
      {final Map<String, List<TornadoEntity>>? tornadoData,
      final Map<String, List<AreaEntity>>? areasData,
      final Map<String, SectorOverviewCluster>? sectorsOverviewData,
      final Map<String, List<SectorIndexEntity>>? sectorsIndexData,
      this.selectedDate,
      final List<String> dates = const []})
      : _tornadoData = tornadoData,
        _areasData = areasData,
        _sectorsOverviewData = sectorsOverviewData,
        _sectorsIndexData = sectorsIndexData,
        _dates = dates;

  final Map<String, List<TornadoEntity>>? _tornadoData;
  @override
  Map<String, List<TornadoEntity>>? get tornadoData {
    final value = _tornadoData;
    if (value == null) return null;
    if (_tornadoData is EqualUnmodifiableMapView) return _tornadoData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, List<AreaEntity>>? _areasData;
  @override
  Map<String, List<AreaEntity>>? get areasData {
    final value = _areasData;
    if (value == null) return null;
    if (_areasData is EqualUnmodifiableMapView) return _areasData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, SectorOverviewCluster>? _sectorsOverviewData;
  @override
  Map<String, SectorOverviewCluster>? get sectorsOverviewData {
    final value = _sectorsOverviewData;
    if (value == null) return null;
    if (_sectorsOverviewData is EqualUnmodifiableMapView)
      return _sectorsOverviewData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, List<SectorIndexEntity>>? _sectorsIndexData;
  @override
  Map<String, List<SectorIndexEntity>>? get sectorsIndexData {
    final value = _sectorsIndexData;
    if (value == null) return null;
    if (_sectorsIndexData is EqualUnmodifiableMapView) return _sectorsIndexData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? selectedDate;
  final List<String> _dates;
  @override
  @JsonKey()
  List<String> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'HomeUIModel(tornadoData: $tornadoData, areasData: $areasData, sectorsOverviewData: $sectorsOverviewData, sectorsIndexData: $sectorsIndexData, selectedDate: $selectedDate, dates: $dates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUIModel &&
            const DeepCollectionEquality()
                .equals(other._tornadoData, _tornadoData) &&
            const DeepCollectionEquality()
                .equals(other._areasData, _areasData) &&
            const DeepCollectionEquality()
                .equals(other._sectorsOverviewData, _sectorsOverviewData) &&
            const DeepCollectionEquality()
                .equals(other._sectorsIndexData, _sectorsIndexData) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tornadoData),
      const DeepCollectionEquality().hash(_areasData),
      const DeepCollectionEquality().hash(_sectorsOverviewData),
      const DeepCollectionEquality().hash(_sectorsIndexData),
      selectedDate,
      const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeUIModelCopyWith<_$_HomeUIModel> get copyWith =>
      __$$_HomeUIModelCopyWithImpl<_$_HomeUIModel>(this, _$identity);
}

abstract class _HomeUIModel implements HomeUIModel {
  const factory _HomeUIModel(
      {final Map<String, List<TornadoEntity>>? tornadoData,
      final Map<String, List<AreaEntity>>? areasData,
      final Map<String, SectorOverviewCluster>? sectorsOverviewData,
      final Map<String, List<SectorIndexEntity>>? sectorsIndexData,
      final String? selectedDate,
      final List<String> dates}) = _$_HomeUIModel;

  @override
  Map<String, List<TornadoEntity>>? get tornadoData;
  @override
  Map<String, List<AreaEntity>>? get areasData;
  @override
  Map<String, SectorOverviewCluster>? get sectorsOverviewData;
  @override
  Map<String, List<SectorIndexEntity>>? get sectorsIndexData;
  @override
  String? get selectedDate;
  @override
  List<String> get dates;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUIModelCopyWith<_$_HomeUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
