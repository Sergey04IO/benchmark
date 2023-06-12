import 'dart:math' as math;

import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ScaleDotsLoadingIndicator extends StatefulWidget {
  const ScaleDotsLoadingIndicator({
    super.key,
    this.color = AppColors.blue0F3,
    this.size = 60,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  });

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<ScaleDotsLoadingIndicator> createState() =>
      _ScaleDotsLoadingIndicatorState();
}

class _ScaleDotsLoadingIndicatorState extends State<ScaleDotsLoadingIndicator>
    with SingleTickerProviderStateMixin {
  static const _itemCount = 10;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Stack(
          children: List.generate(_itemCount, (index) {
            final position = widget.size * 0.5;
            final radiantStep = 2 * math.pi / _itemCount * index;
            return Positioned.fill(
              left: position,
              top: position,
              child: Transform(
                transform: Matrix4.rotationZ(radiantStep),
                child: Align(
                  child: ScaleTransition(
                    scale: _DelayTween(
                      begin: 0.0,
                      end: 1.0,
                      delay: index / _itemCount,
                    ).animate(_controller),
                    child: SizedBox.fromSize(
                      size: Size.square(widget.size * 0.12),
                      child: _itemBuilder(index),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
          decoration:
              BoxDecoration(color: widget.color, shape: BoxShape.circle));
}

class _DelayTween extends Tween<double> {
  _DelayTween({double? begin, double? end, required this.delay})
      : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
