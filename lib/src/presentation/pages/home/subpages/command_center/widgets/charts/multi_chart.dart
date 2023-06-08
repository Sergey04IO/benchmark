import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/number_extensions.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/multi_chart/multi_chart_help_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MultiChart extends StatefulWidget {
  const MultiChart({
    super.key,
    this.useAnimations = true,
    this.model,
  });

  final bool useAnimations;
  final MultiChartHelpModel? model;

  @override
  State<MultiChart> createState() => _MultiChartState();
}

class _MultiChartState extends State<MultiChart> {
  late List<MultiChartItemModel> _chartData;

  double get _columnAnimDelay =>
      CommonConstants.commandCenterAnimDelay.inMilliseconds.toDouble();

  double get _animDuration =>
      CommonConstants.primaryAnimDuration.inMilliseconds.toDouble();

  double get _lineAnimDelay => _animDuration;

  @override
  void initState() {
    _chartData = widget.model?.items ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildMultipleAxisLineChart();
  }

  SfCartesianChart _buildMultipleAxisLineChart() {
    return SfCartesianChart(
      axes: <ChartAxis>[
        _getAxisY(
          axisTitle: LocaleKeys.commandCenter_multiChartYOppositeTitle.tr(),
          labelEnding: 'ms',
          // max: 1500,
          // interval: 500,
          isOpposedPosition: true,
          axisName: 'yAxis',
        ),
      ],
      primaryXAxis: _getAxisX(),
      primaryYAxis: _getAxisY(
        axisTitle: LocaleKeys.commandCenter_multiChartYTitle.tr(),
        labelEnding: 's',
        max: _getYAxisMaxValue(),
        interval: _getYAxisInterval(),
      ),
      series: _getMultipleAxisLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
      plotAreaBorderWidth: 0,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    );
  }

  NumericAxis _getAxisY({
    String? axisTitle,
    bool isOpposedPosition = false,
    double min = 0,
    double? max,
    double? interval,
    String? labelEnding,
    String? axisName,
  }) {
    final style = CommandCenterTextTheme.of(context)
        ?.bodySmallTextStyle
        ?.withOpacity(0.5);
    return NumericAxis(
      title: AxisTitle(
        text: axisTitle,
        textStyle: CommandCenterTextTheme.of(context)
            ?.subtitleTextStyle
            ?.withOpacity(0.9),
      ),
      name: axisName,
      majorGridLines: const MajorGridLines(width: 0),
      opposedPosition: isOpposedPosition,
      minimum: min,
      maximum: max,
      interval: interval,
      labelFormat: '{value} $labelEnding',
      labelStyle: style,
      majorTickLines: const MajorTickLines(width: 0),
      minorTickLines: const MinorTickLines(width: 0),
      minorGridLines: const MinorGridLines(width: 0),
      borderWidth: 0,
      axisLine: const AxisLine(width: 0),
    );
  }

  DateTimeAxis _getAxisX() {
    return DateTimeAxis(
      title: AxisTitle(text: '', textStyle: const TextStyle(fontSize: 0)),
      labelStyle: const TextStyle(fontSize: 0),
      edgeLabelPlacement: EdgeLabelPlacement.none,
      majorGridLines: const MajorGridLines(width: 0),
      interval: 1,
      axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel('', null),
      majorTickLines: const MajorTickLines(width: 0),
      minorTickLines: const MinorTickLines(width: 0),
      minorGridLines: const MinorGridLines(width: 0),
      borderWidth: 0,
      axisLine: const AxisLine(width: 0),
      maximumLabelWidth: 0,
    );
  }

  List<ChartSeries<MultiChartItemModel, DateTime>>
      _getMultipleAxisLineSeries() {
    return <ChartSeries<MultiChartItemModel, DateTime>>[
      ColumnSeries<MultiChartItemModel, DateTime>(
        dataSource: _chartData,
        xValueMapper: (sales, _) => sales.x as DateTime,
        yValueMapper: (sales, _) => sales.barY,
        name: LocaleKeys.commandCenter_multiChartPageLoadTime.tr(
          args: ['[GA]'],
        ),
        color: AppColors.blue2BB,
        borderWidth: 0,
        animationDuration: widget.useAnimations ? _animDuration : null,
        animationDelay: widget.useAnimations ? _columnAnimDelay : null,
      ),
      LineSeries<MultiChartItemModel, DateTime>(
        dataSource: _chartData,
        yAxisName: 'yAxis',
        xValueMapper: (sales, _) => sales.x as DateTime,
        yValueMapper: (sales, _) => sales.lineY1,
        name: LocaleKeys.commandCenter_multiChartResponseTime.tr(
          args: ['[Pingdom]'],
        ),
        color: AppColors.redC4C,
        animationDuration: widget.useAnimations ? _animDuration : null,
        animationDelay: widget.useAnimations ? _lineAnimDelay : null,
      ),
      LineSeries<MultiChartItemModel, DateTime>(
        dataSource: _chartData,
        yAxisName: 'yAxis',
        xValueMapper: (sales, _) => sales.x as DateTime,
        yValueMapper: (sales, _) => sales.lineY2,
        name: LocaleKeys.commandCenter_multiChartRedirectionTime.tr(
          args: ['[GA]'],
        ),
        color: AppColors.green528,
        animationDuration: widget.useAnimations ? _animDuration : null,
        animationDelay: widget.useAnimations ? _lineAnimDelay : null,
      ),
      LineSeries<MultiChartItemModel, DateTime>(
        dataSource: _chartData,
        yAxisName: 'yAxis',
        xValueMapper: (sales, _) => sales.x as DateTime,
        yValueMapper: (sales, _) => sales.lineY3,
        name: LocaleKeys.commandCenter_multiChartServerResponseTime.tr(
          args: ['[GA]'],
        ),
        color: AppColors.orangeE2A,
        animationDuration: widget.useAnimations ? _animDuration : null,
        animationDelay: widget.useAnimations ? _lineAnimDelay : null,
      )
    ];
  }

  double? _getYAxisMaxValue() {
    final max = widget.model?.getMaxValue();
    final result = max?.roundTo();
    return result;
  }

  double? _getYAxisInterval() {
    final max = _getYAxisMaxValue();
    final result = (max ?? 0) / 2;
    return result;
  }
}
