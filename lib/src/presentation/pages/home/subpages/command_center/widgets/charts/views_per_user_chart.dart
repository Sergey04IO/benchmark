import 'package:benchmark/src/app/core/extensions/number_extensions.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/data/command_center/views_per_user_help_data.dart';
import 'package:benchmark/src/data/helper/models/command_center/views_per_user/views_per_user_help_model.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ViewsPerUserChart extends StatefulWidget {
  const ViewsPerUserChart({super.key});

  @override
  State<ViewsPerUserChart> createState() => _ViewsPerUserChartState();
}

class _ViewsPerUserChartState extends State<ViewsPerUserChart> {
  late List<ViewsPerUserHelpModel> chartData;
  late double maxYValue;

  @override
  void initState() {
    chartData = ViewsPerUserHelpData.data;
    maxYValue = _getMaxValue();
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
        maximum: maxYValue,
      ),
      series: _getSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<ViewsPerUserHelpModel, DateTime>> _getSeries() {
    return <LineSeries<ViewsPerUserHelpModel, DateTime>>[
      LineSeries<ViewsPerUserHelpModel, DateTime>(
        dataSource: chartData,
        xValueMapper: (sales, _) => sales.date as DateTime,
        yValueMapper: (sales, _) => sales.amazingClips,
        width: 2,
        name: 'amazingclips.com',
        color: AppColors.blue0F3,
      ),
      LineSeries<ViewsPerUserHelpModel, DateTime>(
        dataSource: chartData,
        width: 2,
        xValueMapper: (sales, _) => sales.date as DateTime,
        yValueMapper: (sales, _) => sales.goodClips,
        name: 'goodclips.com',
        color: AppColors.green528,
      ),
      LineSeries<ViewsPerUserHelpModel, DateTime>(
        dataSource: chartData,
        width: 2,
        xValueMapper: (sales, _) => sales.date as DateTime,
        yValueMapper: (sales, _) => sales.clipstore,
        name: 'clipstore.com',
        color: AppColors.orangeE2A,
      )
    ];
  }

  double _getMaxValue() {
    final List<double> values = [];
    final amazingClipsMax = chartData
        .reduce((curr, next) =>
            curr.amazingClips! > next.amazingClips! ? curr : next)
        .amazingClips;
    final goodClipsMax = chartData
        .reduce((curr, next) => curr.goodClips! > next.goodClips! ? curr : next)
        .amazingClips;
    final clipstoreMax = chartData
        .reduce((curr, next) => curr.clipstore! > next.clipstore! ? curr : next)
        .amazingClips;
    if (amazingClipsMax != null) values.add(amazingClipsMax);
    if (goodClipsMax != null) values.add(goodClipsMax);
    if (clipstoreMax != null) values.add(clipstoreMax);
    final max = values.maxOrNull;
    final rounded = max?.roundTo();
    return rounded ?? 10;
  }

  ChartAxisLabel _getAxisLabel(
    AxisLabelRenderDetails axisLabelRenderArgs, {
    TextStyle? labelStyle,
  }) {
    String label = '';
    final digits = axisLabelRenderArgs.text.replaceAll(RegExp('[^0-9]'), '');
    final letters =
        axisLabelRenderArgs.text.replaceAll(RegExp('[^A-Za-z]'), '');
    final number = int.tryParse(digits);
    if (number != null && number % 5 == 1) {
      label = '$letters $digits';
    }
    return ChartAxisLabel(label, labelStyle);
  }
}
