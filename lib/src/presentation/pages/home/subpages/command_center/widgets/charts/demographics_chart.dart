import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DemographicsChart extends StatefulWidget {
  const DemographicsChart({
    super.key,
    this.height,
    required this.model,
  });

  final double? height;
  final DemographicsHelpModel model;

  @override
  State<DemographicsChart> createState() => _DemographicsChartState();
}

class _DemographicsChartState extends State<DemographicsChart> {
  late DemographicsHelpModel _chartData;

  double get _animDuration =>
      CommonConstants.primaryAnimDuration.inMilliseconds.toDouble();

  double get _animDelay =>
      CommonConstants.commandCenterAnimDelay.inMilliseconds.toDouble();

  @override
  void initState() {
    _chartData = widget.model;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: _buildChart(),
    );
  }

  SfCartesianChart _buildChart() {
    final titleStyle =
        CommandCenterTextTheme.of(context)?.subtitleTextStyle?.withOpacity(0.9);
    final labelStyle = CommandCenterTextTheme.of(context)
        ?.bodySmallTextStyle
        ?.withOpacity(0.5);
    final lineColor = labelStyle?.color?.withOpacity(0.25);
    final people = LocaleKeys.commandCenter_people.tr();
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        title: AxisTitle(
          text: LocaleKeys.commandCenter_ageRange.tr(),
          textStyle: titleStyle,
        ),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        edgeLabelPlacement: EdgeLabelPlacement.none,
        axisLabelFormatter: (details) => _getAxisLabel(
          details.text,
          labelStyle: labelStyle,
        ),
        axisLine: AxisLine(color: lineColor),
      ),
      primaryYAxis: NumericAxis(
        title: AxisTitle(
          text: people,
          textStyle: titleStyle,
        ),
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        majorGridLines: MajorGridLines(color: lineColor),
        axisLabelFormatter: (details) => _getAxisLabel(
          details.text,
          labelStyle: labelStyle,
        ),
      ),
      series: _getSeries(),
      tooltipBehavior: TooltipBehavior(
        enable: true,
        format: '$people: point.y',
      ),
    );
  }

  List<ColumnSeries<DemographicsItemHelpModel, String>> _getSeries() {
    final data = _chartData.clusters.map(_getLineSeries).toList();
    return data;
  }

  ColumnSeries<DemographicsItemHelpModel, String> _getLineSeries(
    DemographicsClusterHelpModel cluster,
  ) {
    return ColumnSeries<DemographicsItemHelpModel, String>(
      dataSource: cluster.items,
      name: cluster.name,
      color: cluster.color,
      xValueMapper: (sales, _) => sales.category,
      yValueMapper: (sales, _) => sales.value,
      width: 0.9,
      spacing: 0.12,
      animationDuration: _animDuration,
      animationDelay: _animDelay,
    );
  }

  ChartAxisLabel _getAxisLabel(
    String text, {
    TextStyle? labelStyle,
  }) {
    return ChartAxisLabel(text, labelStyle);
  }
}
