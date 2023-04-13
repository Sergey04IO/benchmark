import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:flutter/material.dart';

class IndexChart extends StatefulWidget {
  const IndexChart({
    super.key,
    this.serial = 1,
    this.isLast = false,
    this.value = 0,
    this.maxValue = 1,
  });

  final int serial;
  final bool isLast;
  final num value;
  final num maxValue;

  @override
  State<IndexChart> createState() => _IndexChartState();
}

class _IndexChartState extends State<IndexChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _animation;

  late Tween<double> _valueTween;
  late Tween<double> _barTween;
  late Animation<double> _valueAnimation;
  late Animation<double> _barAnimation;

  double _barMaxWidth = 0;

  @override
  void initState() {
    super.initState();
    _init();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _assignBarAnimation();
      _controller.forward();
    });
  }

  @override
  void didUpdateWidget(covariant IndexChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
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
          return Row(
            children: [
              _buildSerialNumber(),
              const SizedBox(width: 2),
              Flexible(
                child: _buildBar(),
              ),
              _buildBarValue(),
            ],
          );
        });
  }

  Widget _buildSerialNumber() {
    final text = widget.isLast ? 'X' : widget.serial.toString();
    return SizedBox(
      width: 30,
      child: Align(
        alignment: const FractionalOffset(0.4, 0.5),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        _barMaxWidth = constraints.maxWidth;
        final width = _barAnimation.value;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          color: widget.isLast ? AppColors.secondaryColor : AppColors.grey0A4,
          height: 25,
          width: width,
          alignment: const FractionalOffset(0.2, 0.5),
          child: widget.isLast ? _buildBarText() : null,
        );
      },
    );
  }

  Widget _buildBarText() {
    return const Text(
      'Your Sector',
      style: TextStyle(
        fontSize: 12,
        color: AppColors.grey948,
      ),
      softWrap: false,
      maxLines: 1,
    );
  }

  Widget _buildBarValue() {
    final value = _valueAnimation.value.toInt();
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 5,
      ),
      child: Text(
        '$value%',
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  double _convertValueToWidth({
    num? maxValue,
    num? value,
    double? barMaxWidth,
  }) {
    final converted = ((value ?? 0) / (maxValue ?? 1)) * (barMaxWidth ?? 0);
    return converted;
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
    _assignBarAnimation();
    _valueTween = Tween(begin: 0, end: widget.value.toDouble());
    _valueAnimation = _valueTween.animate(_animation);
  }

  void _updateValues() {
    _valueTween.begin =
        _isAnimating(_valueAnimation) ? _valueAnimation.value : _valueTween.end;
    _barTween.begin =
        _isAnimating(_barAnimation) ? _barAnimation.value : _barTween.end;
    _controller.reset();
    _valueTween.end = widget.value.toDouble();
    _barTween.end = _convertValueToWidth(
      barMaxWidth: _barMaxWidth,
      maxValue: widget.maxValue,
      value: widget.value,
    );
    _controller.forward();
  }

  void _assignBarAnimation() {
    _barTween = Tween(
      begin: 0.0,
      end: _convertValueToWidth(
        barMaxWidth: _barMaxWidth,
        maxValue: widget.maxValue,
        value: widget.value,
      ),
    );
    _barAnimation = _barTween.animate(_animation);
  }

  bool _isAnimating(Animation<double>? animation) {
    return animation?.status == AnimationStatus.forward;
  }
}
