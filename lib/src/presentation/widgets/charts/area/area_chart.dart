import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AreaChart extends StatefulWidget {
  const AreaChart({
    super.key,
    this.values = const [],
    this.maxValue,
  });

  final List<num> values;
  final double? maxValue;

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
          right: true,
          top: false,
          left: true,
          bottom: false,
        ),
        minY: 0,
        maxY: widget.maxValue,
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
            color: Colors.transparent,
            belowBarData: BarAreaData(
              show: true,
              gradient: const LinearGradient(
                colors: [
                  AppColors.primaryColor,
                  Color.fromRGBO(60, 60, 60, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _initialValues() {
    final initial = List.generate(
      5,
      (index) => const FlSpot(0, 0),
    );
    return initial;
  }
}
