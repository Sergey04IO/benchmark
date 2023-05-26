import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/domain/entities/sector_overview/entity/sector_overview_entity.dart';
import 'package:benchmark/src/presentation/widgets/charts/sectors_overview/single_sector_overview.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SectorsOverviewChart extends StatefulWidget {
  const SectorsOverviewChart({
    super.key,
    this.models = const [],
    required this.average,
    this.height,
    this.maxValue,
  });

  final double? height;
  final int? maxValue;
  final num average;
  final List<SectorOverviewEntity> models;

  @override
  State<SectorsOverviewChart> createState() => _SectorsOverviewChartState();
}

class _SectorsOverviewChartState extends State<SectorsOverviewChart>
    with SingleTickerProviderStateMixin {
  late NumberFormat _formatter;
  late double _screenWidth;

  final double _notBarsContentHeight = 175;
  final double _averageLineBottomMinOffset = 50;
  double _barMaxHeight = 225;

  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _avgLineTween;
  late Tween<double> _avgValueTween;
  late Animation<double> _avgLineAnimation;
  late Animation<double> _avgValueAnimation;

  double height = 0;

  @override
  void initState() {
    super.initState();
    height = widget.height ?? 0;
    _init();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void didUpdateWidget(covariant SectorsOverviewChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.average != widget.average) {
      height = widget.height ?? 0;
      _updateValues();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return _buildContent();
        });
  }

  Widget _buildContent() {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final numberOfBars = widget.models.length;
        final double linePadding = (maxWidth - numberOfBars * 100) / 2;
        final double textPadding = linePadding - 40;

        return Stack(
          children: [
            _buildAverageLine(
              width: maxWidth,
              horizontalPadding: _fixPositiveValue(linePadding),
            ),
            _buildBars(),
            _buildAverageText(
              rightPadding: _fixPositiveValue(textPadding),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildBars() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ..._mapModelsIntoBars(),
      ],
    );
  }

  Widget _buildAverageLine({
    double? width,
    double horizontalPadding = 0,
  }) {
    final bottomOffset = _avgLineAnimation.value;
    return Positioned(
      bottom: bottomOffset < _averageLineBottomMinOffset
          ? _averageLineBottomMinOffset
          : bottomOffset,
      right: horizontalPadding,
      left: horizontalPadding,
      child: Container(
        width: width,
        height: 2,
        color: AppColors.primaryColor,
      ),
    );
  }

  Widget _buildAverageText({
    double rightPadding = 0,
  }) {
    const avgLineAndValuePadding = 10;
    final avgValue = _avgValueAnimation.value;

    final bottomOffset = _avgLineAnimation.value;

    return Positioned(
      bottom:
          bottomOffset < _averageLineBottomMinOffset + avgLineAndValuePadding
              ? _averageLineBottomMinOffset + avgLineAndValuePadding
              : bottomOffset + avgLineAndValuePadding,
      right: rightPadding,
      child: Text(
        _getAverageText(avgValue),
      ),
    );
  }

  List<Widget> _mapModelsIntoBars() {
    return widget.models.mapIndexed((index, model) {
      final removeItemBeforeLast = _shouldRemoveItemBeforeLast(index);
      if (removeItemBeforeLast) {
        return const SizedBox.shrink();
      }
      return SingleSectorOverview(
        model: model,
        serial: index + 1,
        isLast: index == widget.models.length - 1,
        isFirst: index == 0,
        average: _avgValueAnimation.value,
        barMaxHeight: _barMaxHeight,
        maxValue: widget.maxValue,
      );
    }).toList();
  }

  double _fixPositiveValue(double value) {
    return value < 0 ? 0 : value;
  }

  bool _shouldRemoveItemBeforeLast(int index) {
    if (widget.models.length < 4) {
      return false;
    }
    if (index == widget.models.length - 3 && _screenWidth < 450 ||
        index == widget.models.length - 2 && _screenWidth < 520) {
      return true;
    }
    return false;
  }

  double convertValueToHeight({
    num? maxValue,
    num? value,
  }) {
    final converted = ((value ?? 0) / (maxValue ?? 1)) * _barMaxHeight;
    return converted;
  }

  void _init() {
    _barMaxHeight =
        widget.height == null ? _barMaxHeight : height - _notBarsContentHeight;
    _formatter = FormatUtil.compact;

    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );

    _avgLineTween = Tween(
      begin: _averageLineBottomMinOffset,
      end: convertValueToHeight(
            maxValue: widget.maxValue,
            value: widget.average,
          ) +
          _averageLineBottomMinOffset,
    );
    _avgValueTween = Tween(
      begin: 0.0,
      end: widget.average.toDouble(),
    );
    _avgLineAnimation = _avgLineTween.animate(_animation);
    _avgValueAnimation = _avgValueTween.animate(_animation);
  }

  void _updateValues() {
    _barMaxHeight =
        widget.height == null ? _barMaxHeight : height - _notBarsContentHeight;
    _avgLineTween.begin = _isAnimating(_avgLineAnimation)
        ? _avgLineAnimation.value
        : _avgLineTween.end;
    _avgValueTween.begin = _isAnimating(_avgValueAnimation)
        ? _avgValueAnimation.value
        : _avgValueTween.end;
    _controller.reset();
    _avgLineTween.end = convertValueToHeight(
          maxValue: widget.maxValue,
          value: widget.average,
        ) +
        _averageLineBottomMinOffset;
    _avgValueTween.end = widget.average.toDouble();

    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  String _getAverageText(double average) {
    final width = MediaQuery.of(context).size.width;
    final avgValue = _formatter.format(average);
    if (width > 1200 && width < 1280) {
      return 'Avg. is $avgValue';
    } else if (width > 660) {
      return 'Average is $avgValue';
    } else if (width <= 660 && width >= 580) {
      return 'Avg: $avgValue';
    } else if (width <= 580) {
      return avgValue;
    }
    return '';
  }
}
