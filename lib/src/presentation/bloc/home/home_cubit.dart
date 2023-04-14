import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/cluster/sector_overview_cluster.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/domain/repositories/home_repository.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model.dart';
import 'package:excel/excel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  final HomeRepository _homeRepository;

  Map<String, List<TornadoEntity>>? _tornadoData;
  Map<String, List<AreaEntity>>? _areasData;
  Map<String, SectorOverviewCluster>? _sectorsOverviewData;
  Map<String, List<SectorIndexEntity>>? _sectorsIndexData;

  final List<String> _dates = [];

  String? _selectedDate;

  Future<void> emitError({Excel? excelFile}) async {
    _handleError();
  }

  Future<void> getData({Excel? excelFile}) async {
    try {
      // Without this statement Somehow the loading state is not emitted in the case of local xlsx file
      await _addDelayForExcelSource(excelFile: excelFile);

      emit(const HomeState.loading());
      await _init(excelFile: excelFile);
      _tornadoData = await _homeRepository.getTornadoData();
      _areasData = await _homeRepository.getAreasData();
      _sectorsOverviewData = await _homeRepository.getSectorsOverviewData();
      _sectorsIndexData = await _homeRepository.getSectorsIndexData();
      _getDates();
      _handleData();
    } catch (e) {
      _handleError();
      debugPrint('Error! $this');
    }
  }

  Future<void> _init({Excel? excelFile}) async {
    if (excelFile != null) {
      await _homeRepository.init(ConfigDataSource.excel, excelFile: excelFile);
    } else {
      await _homeRepository.init(ConfigDataSource.gsheets);
    }
  }

  void onSelectedDate(String date) {
    _selectedDate = date;
    _emitData();
  }

  void _handleData() {
    if (_tornadoData == null &&
        _areasData == null &&
        _sectorsOverviewData == null &&
        _sectorsIndexData == null) {
      _handleError();
    } else {
      _emitData();
    }
  }

  void _emitData() {
    emit(const HomeState.clearState());
    final HomeUIModel model = HomeUIModel(
      tornadoData: _tornadoData,
      areasData: _areasData,
      sectorsOverviewData: _sectorsOverviewData,
      sectorsIndexData: _sectorsIndexData,
      selectedDate: _selectedDate,
      dates: _dates,
    );
    emit(HomeState.data(model));
  }

  void _getDates() {
    final data = _tornadoData?.keys ?? [];
    if (data.isNotEmpty) {
      _dates.clear();
      _dates.addAll(data);
      _selectedDate = data.first;
    }
  }

  void _handleError() {
    emit(const HomeState.error('Something went wrong! Try again later'));
  }

  Future<void> _addDelayForExcelSource({Excel? excelFile}) async {
    if (excelFile != null) {
      emit(const HomeState.loading());
      await Future.delayed(const Duration(milliseconds: 1));
    }
  }
}
