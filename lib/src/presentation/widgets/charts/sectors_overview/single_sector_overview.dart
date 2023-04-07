import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/domain/entities/sector_overview/sector_overview_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SingleSectorOverview extends StatefulWidget {
  const SingleSectorOverview({
    super.key,
    required this.model,
    this.barMaxHeight,
    this.maxValue,
    this.isLast = false,
    this.isFirst = false,
    this.serial = 0,
    this.average,
  });

  final double? barMaxHeight;
  final int? maxValue;
  final bool isLast;
  final bool isFirst;
  final int serial;
  final num? average;

  final SectorOverviewEntity model;

  @override
  State<SingleSectorOverview> createState() => _SingleSectorOverviewState();
}

class _SingleSectorOverviewState extends State<SingleSectorOverview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _valueTween;
  late Tween<double> _barTween;
  late Animation<double> _valueAnimation;
  late Animation<double> _barAnimation;

  late NumberFormat _formatter;
  final double notBarsContentHeight = 175;
  late double _screenWidth;

  @override
  void initState() {
    super.initState();
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
  void didUpdateWidget(covariant SingleSectorOverview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model != widget.model) {
      _updateValues();
    }
  }

  @override
  void dispose() {
    _animation.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return _buildBar();
      },
    );
  }

  Widget _buildBar() {
    final double width = _screenWidth < 450 && _screenWidth >= 350
        ? 40
        : _screenWidth < 350
            ? 30
            : 50;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildBarValueText(),
        const SizedBox(height: 5),
        Flexible(
          child: Container(
            width: width,
            height: _barAnimation.value,
            color: _getBarColor(),
          ),
        ),
        const SizedBox(height: 10),
        _buildBarSubtitle(
          widget.model.title ?? '',
        ),
        const SizedBox(height: 10),
        _buildSerialNumber(),
      ],
    );
  }

  Widget _buildBarValueText() {
    final value = _valueAnimation.value;
    final formatted = _formatter.format(value);
    return AnimatedOpacity(
      duration: CommonConstants.secondaryAnimDuration,
      opacity: value < (widget.average ?? 0) ? 0 : 1,
      child: Text(
        formatted,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.deepGreen,
        ),
      ),
    );
  }

  Widget _buildBarSubtitle(String name) {
    final double width = _screenWidth < 450 && _screenWidth >= 350
        ? 60
        : _screenWidth < 350
            ? 50
            : 70;
    return Container(
      alignment: Alignment.center,
      width: widget.isLast ? null : width,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.grey948,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSerialNumber() {
    final text = widget.isLast ? 'X' : widget.serial.toString();
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  double convertValueToHeight({
    num? maxValue,
    num? value,
  }) {
    final converted =
        ((value ?? 0) / (maxValue ?? 1)) * (widget.barMaxHeight ?? 0);
    return converted;
  }

  void _init() {
    _formatter = NumberFormat.compact();
    _controller = AnimationController(
      vsync: this,
      duration: CommonConstants.primaryAnimDuration,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _valueTween = Tween<double>(
      begin: 0,
      end: widget.model.value?.toDouble(),
    );
    _barTween = Tween<double>(
      begin: 0.0,
      end: convertValueToHeight(
          maxValue: widget.maxValue, value: widget.model.value),
    );
    _valueAnimation = _valueTween.animate(_animation);
    _barAnimation = _barTween.animate(_animation);
  }

  void _updateValues() {
    _valueTween.begin =
        _isAnimating(_valueAnimation) ? _valueAnimation.value : _valueTween.end;
    _barTween.begin =
        _isAnimating(_barAnimation) ? _barAnimation.value : _barTween.end;
    _controller.reset();
    _valueTween.end = widget.model.value?.toDouble();
    _barTween.end = convertValueToHeight(
        maxValue: widget.maxValue, value: widget.model.value);
    _controller.forward();
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }

  Color? _getBarColor() {
    if (widget.isFirst) {
      return AppColors.deepGreen;
    } else if (widget.isLast) {
      return AppColors.secondaryColor;
    } else {
      return AppColors.primaryColor;
    }
  }
}
