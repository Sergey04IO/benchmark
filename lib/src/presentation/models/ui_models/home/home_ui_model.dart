import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/sector_overview_entity.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeUIModel with _$HomeUIModel {
  const factory HomeUIModel({
    Map<String, List<TornadoEntity>>? tornadoData,
    Map<String, List<AreaEntity>>? areasData,
    Map<String, List<SectorOverviewEntity>>? sectorsOverviewData,
    Map<String, List<SectorIndexEntity>>? sectorsIndexData,
    String? selectedDate,
    @Default([]) List<String> dates,
  }) = _HomeUIModel;
}
