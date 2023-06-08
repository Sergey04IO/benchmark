import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/number_extensions.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/views_per_user/views_per_user_help_model.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ViewsPerUserChart extends StatefulWidget {
  const ViewsPerUserChart({
    super.key,
    required this.model,
  });

  final ViewsPerUserHelpModel model;

  @override
  State<ViewsPerUserChart> createState() => _ViewsPerUserChartState();
}

class _ViewsPerUserChartState extends State<ViewsPerUserChart> {
  late ViewsPerUserHelpModel _chartData;
  late double _maxYValue;

  double get _animDuration =>
      CommonConstants.primaryAnimDuration.inMilliseconds.toDouble();

  double get _animDelay =>
      CommonConstants.commandCenterAnimDelay.inMilliseconds.toDouble();

  @override
  void initState() {
    _chartData = widget.model;
    _maxYValue = _getMaxValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildChart();
  }

  SfCartesianChart _buildChart() {
    final style = CommandCenterTextTheme.of(context)
        ?.bodySmallTextStyle
        ?.withOpacity(0.5);
    final lineColor = style?.color?.withOpacity(0.25);
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: DateTimeAxis(
        majorGridLines: const MajorGridLines(width: 0),
        dateFormat: DateFormat.MMMd(),
        interval: 1,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelIntersectAction: AxisLabelIntersectAction.none,
        axisLabelFormatter: (details) => _getAxisLabel(
          details,
          labelStyle: style,
        ),
        labelStyle: style,
        majorTickLines: MajorTickLines(color: lineColor),
        axisLine: AxisLine(color: lineColor),
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        majorGridLines: MajorGridLines(color: lineColor),
        labelStyle: style,
        interval: 10,
        maximum: _maxYValue,
      ),
      series: _getSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<ViewsPerUserItemModel, DateTime>> _getSeries() {
    final data = _chartData.clusters.map(_getLineSeries).toList();
    return data;
  }

  LineSeries<ViewsPerUserItemModel, DateTime> _getLineSeries(
    ViewsPerUserClusterModel cluster,
  ) {
    return LineSeries<ViewsPerUserItemModel, DateTime>(
      dataSource: cluster.items,
      width: 2,
      xValueMapper: (sales, index) => _getDate(cluster.items.length, index),
      yValueMapper: (sales, _) => sales.value,
      name: cluster.name,
      color: cluster.color,
      animationDuration: _animDuration,
      animationDelay: _animDelay,
    );
  }

  DateTime _getDate(int length, int index) {
    final day = length - index;
    final now = DateTime.now();
    final date = now.subtract(Duration(days: day));
    return DateTime(date.year, date.month, date.day);
  }

  double _getMaxValue() {
    final List<double> values = [];
    for (final item in _chartData.clusters) {
      final max = item.getMaxValue();
      values.add(max);
    }
    final max = values.maxOrNull;
    final rounded = max?.roundTo();
    return rounded ?? 10;
  }

  ChartAxisLabel _getAxisLabel(
    AxisLabelRenderDetails axisLabelRenderArgs, {
    TextStyle? labelStyle,
  }) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final date = DateTime.fromMillisecondsSinceEpoch(
      axisLabelRenderArgs.value.toInt(),
    );
    final diffInDays = today.difference(date).inDays;
    String label = '';
    final digits = axisLabelRenderArgs.text.replaceAll(RegExp('[^0-9]'), '');
    final letters =
        axisLabelRenderArgs.text.replaceAll(RegExp('[^A-Za-z]'), '');
    final number = int.tryParse(digits);
    if (number != null && diffInDays % 5 == 0) {
      label = '$letters $digits';
    }
    return ChartAxisLabel(label, labelStyle);
  }
}
