import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AreaChart extends StatefulWidget {
  const AreaChart({
    super.key,
    this.values = const [],
    this.maxExtent,
    this.isCommandCenter = false,
  });

  final List<num> values;
  final double? maxExtent;
  final bool isCommandCenter;

  @override
  State<AreaChart> createState() => _AreaChartState();
}

class _AreaChartState extends State<AreaChart> {
  bool isInitial = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isInitial = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return LineChart(
      swapAnimationDuration: CommonConstants.primaryAnimDuration,
      swapAnimationCurve: Curves.decelerate,
      LineChartData(
        clipData: FlClipData(
          right: !widget.isCommandCenter,
          top: false,
          left: !widget.isCommandCenter,
          bottom: false,
        ),
        minY: 0,
        maxY: widget.maxExtent,
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          show: false,
        ),
        lineTouchData: LineTouchData(enabled: false),
        lineBarsData: [
          LineChartBarData(
            spots: [
              if (isInitial)
                ..._initialValues()
              else
                ...widget.values.mapIndexed((index, value) {
                  return FlSpot(index.toDouble(), value.toDouble());
                }),
            ],
            color:
                widget.isCommandCenter ? AppColors.blue0F3 : Colors.transparent,
            barWidth: widget.isCommandCenter ? 2 : null,
            belowBarData: widget.isCommandCenter
                ? _commandCenterBelowBarAreaData()
                : _analyticsBelowBarAreaData(),
            dotData:
                widget.isCommandCenter ? _commandCenterDot() : _analyticsDot(),
            isStrokeCapRound: true,
          ),
        ],
      ),
    );
  }

  List<FlSpot> _initialValues() {
    final initial = List.generate(
      widget.values.length,
      (index) => const FlSpot(0, 0),
    );
    return initial;
  }

  BarAreaData _analyticsBelowBarAreaData() {
    return BarAreaData(
      show: true,
      gradient: const LinearGradient(
        colors: [
          AppColors.primaryColor,
          Color.fromRGBO(60, 60, 60, 1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  FlDotData _analyticsDot() {
    return FlDotData(show: false);
  }

  BarAreaData _commandCenterBelowBarAreaData() {
    return BarAreaData(
      show: true,
      color: AppColors.blue0F3.withOpacity(0.35),
    );
  }

  FlDotData _commandCenterDot() {
    return FlDotData(
      show: true,
      checkToShowDot: (spot, barData) {
        return barData.mostRightSpot == spot;
      },
      getDotPainter: (spot, percentage, barData, index) {
        return FlDotCirclePainter(
          color: AppColors.blue0F3,
          radius: 4,
          strokeWidth: 0,
        );
      },
    );
  }
}
