import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/domain/entities/sector_overview/cluster/sector_overview_cluster.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeUIModel with _$HomeUIModel {
  const factory HomeUIModel({
    Map<String, List<TornadoEntity>>? tornadoData,
    Map<String, List<AreaEntity>>? areasData,
    Map<String, SectorOverviewCluster>? sectorsOverviewData,
    Map<String, List<SectorIndexEntity>>? sectorsIndexData,
    String? selectedDate,
    @Default([]) List<String> dates,
  }) = _HomeUIModel;
}
