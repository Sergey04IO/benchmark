import 'dart:math';

import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/extensions/random_extension.dart';
import 'package:benchmark/src/domain/entities/area/area_entity.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/app_common_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/area/area_chart.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AreaCard extends StatefulWidget {
  const AreaCard({
    super.key,
    required this.model,
    this.width,
    this.height = 200,
    this.useMinWidth = false,
  });

  final AreaEntity model;
  final double? width;
  final double height;
  final bool useMinWidth;

  @override
  State<AreaCard> createState() => _AreaCardState();
}

class _AreaCardState extends State<AreaCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;
  late Tween<double> _valueYTDTween;
  late Tween<double> _differenceTween;
  late Animation<double> _valueYTDAnimation;
  late Animation<double> _differenceAnimation;

  final double cardMinHeight = 200;
  final double cardMaxHeight = 300;

  double height = 0;

  double? _maxValue;

  @override
  void initState() {
    super.initState();
    _assignMaxValue();
    height = widget.height < cardMinHeight ? cardMinHeight : widget.height;
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _valueYTDTween = Tween(
      begin: 0.0,
      end: _getYTDValue(),
    );
    _differenceTween = Tween(begin: 0.0, end: _getDifference());
    _valueYTDAnimation = _valueYTDTween.animate(_animation);
    _differenceAnimation = _differenceTween.animate(_animation);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
  }

  @override
  void didUpdateWidget(covariant AreaCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model != widget.model) {
      _assignMaxValue();
      height = widget.height < cardMinHeight ? cardMinHeight : widget.height;
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height < cardMinHeight ? cardMaxHeight : height,
        minWidth: widget.useMinWidth ? 200 : 0.0,
      ),
      child: AppCommonCard(
        width: widget.width,
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return _buildContent();
      },
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        10,
        10,
        10,
        15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 20),
          _buildValue(),
          _buildValueSubtitle(),
          const SizedBox(height: 20),
          _buildDifferenceValue(),
          const SizedBox(height: 20),
          Expanded(
            child: AreaChart(
              values: widget.model.values,
              maxValue: _maxValue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      widget.model.title ?? '',
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      softWrap: false,
      maxLines: 1,
    );
  }

  Widget _buildValue() {
    final model = widget.model;
    final isEur = _isEurCard();
    final formatter = (model.values.isNotEmpty ? model.values.last : 0) < 100
        ? NumberFormat('#,###,##0.0')
        : NumberFormat('#,###,###');
    String value = formatter.format(_valueYTDAnimation.value);

    if (!isEur) {
      value = '$value%';
    } else {}
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: _getValueUnitText(
            text: value,
            fontSize: 24,
            color: widget.model.unit == 'EUR'
                ? AppColors.grey948
                : AppColors.primaryColor,
          ),
        ),
        if (isEur) const SizedBox(width: 5),
        if (isEur)
          SizedBox(
            height: 24,
            child: Align(
              alignment: const FractionalOffset(0, 0.75),
              child: _getValueUnitText(
                text: widget.model.unit,
                fontSize: 11,
                color: AppColors.grey948,
              ),
            ),
          ),
      ],
    );
  }

  Widget _getValueUnitText({
    String? text,
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
        height: 1,
      ),
      softWrap: false,
      maxLines: 1,
    );
  }

  Widget _buildValueSubtitle() {
    return const Text(
      'YTD',
      style: TextStyle(
        fontSize: 16,
        color: AppColors.primaryColor,
      ),
    );
  }

  Widget _buildDifferenceValue() {
    final formatter = _getDifference() < 100 && !_isEurCard()
        ? NumberFormat('#,###,##0.00')
        : NumberFormat('#,###,###');

    String text = '';
    final difference = _differenceAnimation.value;
    final points = widget.model.values;
    if (points.isNotEmpty) {
      final lastValue = points.isNotEmpty ? points.last : 0.0;
      text = formatter.format(lastValue);
      if (points.length > 1) {
        if (difference > 0) {
          text = '+${formatter.format(difference)}';
        } else if (difference < 0) {
          final value = difference.abs();
          text = '-${formatter.format(value)}';
        }
      }
    }
    if (difference == 0) text = '0';

    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            softWrap: false,
            maxLines: 1,
          ),
        ),
        if (difference != 0)
          Icon(
            color: difference > 0 ? AppColors.primaryColor : Colors.red,
            size: 20,
            difference > 0 ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          ),
      ],
    );
  }

  double _getDifference() {
    if (widget.model.difference != null) {
      final value = widget.model.difference!.toDouble();
      return value;
    }
    double difference = 0;
    final points = widget.model.values;
    if (points.length > 1) {
      final lastValue = points.isNotEmpty ? points.last : 0.0;
      final previousValue = points[points.length - 2];
      difference = lastValue.toDouble() - previousValue.toDouble();
    }
    return difference;
  }

  double _getYTDValue() {
    if (widget.model.ytdValue != null) {
      final value = widget.model.ytdValue!.toDouble();
      return value;
    }
    final value = widget.model.values.isNotEmpty
        ? widget.model.values.last.toDouble()
        : 0.0;
    return value;
  }

  void _updateValues() {
    _valueYTDTween.begin = isAnimating(_valueYTDAnimation)
        ? _valueYTDAnimation.value
        : _valueYTDTween.end;
    _differenceTween.begin = isAnimating(_differenceAnimation)
        ? _differenceAnimation.value
        : _differenceTween.end;
    _controller.reset();
    _valueYTDTween.end = _getYTDValue();
    _differenceTween.end = _getDifference();
    _controller.forward();
  }

  bool isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  bool _isEurCard() {
    final isEur = widget.model.unit == 'EUR';
    return isEur;
  }

  void _assignMaxValue() {
    final value =
        widget.model.values.isNotEmpty ? widget.model.values.max : null;
    if (value != null) {
      final random = Random().doubleInRange(start: value, end: value * 1.3);
      _maxValue = random;
    }
  }
}
