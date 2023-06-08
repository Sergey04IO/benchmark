import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_chart_help_model.freezed.dart';

@freezed
class MultiChartHelpModel with _$MultiChartHelpModel {
  const factory MultiChartHelpModel({
    @Default([]) List<MultiChartItemModel> items,
  }) = _MultiChartHelpModel;

  const MultiChartHelpModel._();

  double getMaxValue() {
    if (items.isEmpty) return 0.0;
    final max =
        items.reduce((curr, next) => curr.barY > next.barY ? curr : next).barY;
    return max;
  }
}

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
