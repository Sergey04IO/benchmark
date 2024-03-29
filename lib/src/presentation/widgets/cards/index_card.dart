import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/domain/entities/sector_index/sector_index_entity.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/app_common_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/index/index_chart.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class IndexCard extends StatefulWidget {
  const IndexCard({
    super.key,
    required this.model,
  });

  final SectorIndexEntity model;

  @override
  State<IndexCard> createState() => _IndexCardState();
}

class _IndexCardState extends State<IndexCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _totalValueTween;
  late Tween<double> _diffValueTween;
  late Animation<double> _totalValueAnimation;
  late Animation<double> _diffValueAnimation;

  @override
  void initState() {
    super.initState();
    _init();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
  }

  @override
  void didUpdateWidget(covariant IndexCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    final equality = const ListEquality().equals;
    final ifEquals = equality(widget.model.values, oldWidget.model.values);
    if (!ifEquals) {
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
      constraints: const BoxConstraints(
        minHeight: 200,
      ),
      child: AppCommonCard(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        10,
        10,
        15,
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return _buildBody();
        },
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        const SizedBox(height: 20),
        _buildTotalValue(),
        const SizedBox(height: 2),
        _buildDifferenceValue(),
        const SizedBox(height: 20),
        ...widget.model.values.mapIndexed((index, element) {
          final max =
              widget.model.values.isNotEmpty ? widget.model.values.max : 0;
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 10,
            ),
            child: IndexChart(
              serial: index + 1,
              isLast: index + 1 == widget.model.values.length,
              value: element,
              maxValue: max,
            ),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        widget.model.title ?? '',
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.deepGreen,
          fontWeight: FontWeight.bold,
        ),
        softWrap: false,
        maxLines: 1,
      ),
    );
  }

  Widget _buildTotalValue() {
    final total = _totalValueAnimation.value.toInt();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        '$total%',
        style: const TextStyle(
          fontSize: 24,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
        softWrap: false,
        maxLines: 1,
      ),
    );
  }

  Widget _buildDifferenceValue() {
    final diff = _diffValueAnimation.value.toInt();
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Icon(
            color: AppColors.secondaryColor,
            size: 25,
            diff > 0 ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          ),
          Text(
            '$diff%',
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
            softWrap: false,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  void _init() {
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _totalValueTween = Tween(
      begin: 0,
      end: _getTotalValue(),
    );
    _diffValueTween = Tween(
      begin: 0.0,
      end: _getDiffValue(),
    );
    _totalValueAnimation = _totalValueTween.animate(_animation);
    _diffValueAnimation = _diffValueTween.animate(_animation);
  }

  void _updateValues() {
    _totalValueTween.begin = _isAnimating(_totalValueAnimation)
        ? _totalValueAnimation.value
        : _totalValueTween.end;
    _diffValueTween.begin = _isAnimating(_diffValueAnimation)
        ? _diffValueAnimation.value
        : _diffValueTween.end;
    _controller.reset();
    _totalValueTween.end = _getTotalValue();
    _diffValueTween.end = _getDiffValue();
    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  double _getTotalValue() {
    if (widget.model.total != null) {
      final value = widget.model.total!.toDouble();
      return value;
    }
    if (widget.model.values.isEmpty) {
      return 0;
    }
    return widget.model.values.max.toDouble();
  }

  double _getDiffValue() {
    if (widget.model.difference != null) {
      final value = widget.model.difference!.toDouble();
      return value;
    }
    if (widget.model.values.isEmpty) {
      return 0;
    }
    final max = widget.model.values.max;
    final min = widget.model.values.min;
    final diff = max - min;
    return diff.toDouble();
  }
}
