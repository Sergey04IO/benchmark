import 'package:benchmark/src/domain/entities/sector_overview/entity/sector_overview_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_overview_cluster.freezed.dart';

@freezed
class SectorOverviewCluster with _$SectorOverviewCluster {
  const factory SectorOverviewCluster({
    @Default([]) List<SectorOverviewEntity> entities,
    num? averageValue,
  }) = _SectorOverviewCluster;
}
