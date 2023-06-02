import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/data/command_center/demographics_help_data.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DemographicsChart extends StatefulWidget {
  const DemographicsChart({
    super.key,
    this.height,
  });

  final double? height;

  @override
  State<DemographicsChart> createState() => _DemographicsChartState();
}

class _DemographicsChartState extends State<DemographicsChart> {
  List<DemographicsHelpModel>? chartData;
  @override
  void initState() {
    chartData = DemographicsHelpData.data;
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

  List<ColumnSeries<DemographicsHelpModel, String>> _getSeries() {
    return <ColumnSeries<DemographicsHelpModel, String>>[
      ColumnSeries<DemographicsHelpModel, String>(
        dataSource: chartData!,
        color: AppColors.blueFF7,
        name: LocaleKeys.commandCenter_maleMale.tr(),
        xValueMapper: (sales, _) => sales.category,
        yValueMapper: (sales, _) => sales.male,
        width: 0.9,
        spacing: 0.12,
      ),
      ColumnSeries<DemographicsHelpModel, String>(
        dataSource: chartData!,
        color: AppColors.blue0F3,
        xValueMapper: (sales, _) => sales.category,
        yValueMapper: (sales, _) => sales.female,
        name: LocaleKeys.commandCenter_Female.tr(),
        width: 0.9,
        spacing: 0.12,
      ),
      ColumnSeries<DemographicsHelpModel, String>(
        dataSource: chartData!,
        color: AppColors.blue2BB,
        xValueMapper: (sales, _) => sales.category,
        yValueMapper: (sales, _) => sales.unspecified,
        name: LocaleKeys.commandCenter_unspecified.tr(),
        width: 0.9,
        spacing: 0.12,
      ),
    ];
  }

  ChartAxisLabel _getAxisLabel(
    String text, {
    TextStyle? labelStyle,
  }) {
    return ChartAxisLabel(text, labelStyle);
  }
}
