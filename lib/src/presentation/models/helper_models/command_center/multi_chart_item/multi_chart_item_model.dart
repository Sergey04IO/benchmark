import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_chart_item_model.freezed.dart';

@freezed
class MultiChartItemModel with _$MultiChartItemModel {
  const factory MultiChartItemModel({
    DateTime? x,
    @Default(0.0) double barY,
    @Default(0.0) double lineY1,
    @Default(0.0) double lineY2,
    @Default(0.0) double lineY3,
  }) = _MultiChartItemModel;
}
