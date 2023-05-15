import 'package:flutter/material.dart';

class SlideFadeAnimatable extends AnimatedWidget {
  const SlideFadeAnimatable({
    super.key,
    required super.listenable,
    required this.child,
    this.begin = const Offset(1, 0),
    this.useAnimation = true,
  });

  final Widget child;
  final Offset begin;
  final bool useAnimation;

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return _buildContent(animation);
  }

  Widget _buildContent(Animation<double> animation) {
    if (useAnimation) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: begin,
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
    }
    return child;
  }
}
