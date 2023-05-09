import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/cluster/sector_overview_cluster.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/domain/repositories/analytics_repository.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/analytics/analytics_ui_model.dart';
import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'analytics_cubit.freezed.dart';
part 'analytics_state.dart';

@injectable
class AnalyticsCubit extends BaseCubit<AnalyticsState> {
  AnalyticsCubit(this._homeRepository) : super(const AnalyticsState.initial());

  final AnalyticsRepository _homeRepository;

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

      emit(const AnalyticsState.loading());
      await _init(excelFile: excelFile);
      _tornadoData = await _getTornadoData();
      _areasData = await _getAreasData();
      _sectorsOverviewData = await _getSectorsOverviewData();
      _sectorsIndexData = await _getSectorsIndexData();
      _getDates();
      _handleData();
    } catch (e) {
      _handleError();
    }
  }

  Future<void> _init({Excel? excelFile}) async {
    if (excelFile != null) {
      await _homeRepository.init(ConfigDataSource.excel, excelFile: excelFile);
    } else {
      await _homeRepository.init(ConfigDataSource.gsheets);
    }
  }

  Future<Map<String, List<TornadoEntity>>?> _getTornadoData() async {
    final dataOrFailure = await _homeRepository.getTornadoData();
    final result = dataOrFailure.fold(
      (failure) => null,
      (data) => data,
    );
    return result;
  }

  Future<Map<String, List<AreaEntity>>?> _getAreasData() async {
    final dataOrFailure = await _homeRepository.getAreasData();
    final result = dataOrFailure.fold(
      (failure) => null,
      (data) => data,
    );
    return result;
  }

  Future<Map<String, SectorOverviewCluster>?> _getSectorsOverviewData() async {
    final dataOrFailure = await _homeRepository.getSectorsOverviewData();
    final result = dataOrFailure.fold(
      (failure) => null,
      (data) => data,
    );
    return result;
  }

  Future<Map<String, List<SectorIndexEntity>>?> _getSectorsIndexData() async {
    final dataOrFailure = await _homeRepository.getSectorsIndexData();
    final result = dataOrFailure.fold(
      (failure) => null,
      (data) => data,
    );
    return result;
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
    emit(const AnalyticsState.clearState());
    final AnalyticsUIModel model = AnalyticsUIModel(
      tornadoData: _tornadoData,
      areasData: _areasData,
      sectorsOverviewData: _sectorsOverviewData,
      sectorsIndexData: _sectorsIndexData,
      selectedDate: _selectedDate,
      dates: _dates,
    );
    emit(AnalyticsState.data(model));
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
    emit(const AnalyticsState.error('Something went wrong! Try again later'));
  }

  Future<void> _addDelayForExcelSource({Excel? excelFile}) async {
    if (excelFile != null) {
      emit(const AnalyticsState.loading());
      await Future.delayed(const Duration(milliseconds: 1));
    }
  }
}
