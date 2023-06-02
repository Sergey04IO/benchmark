import 'package:benchmark/src/app/core/utils/platform_util.dart';
import 'package:flutter/material.dart';

class AppScrollbar extends StatefulWidget {
  const AppScrollbar({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  State<AppScrollbar> createState() => _AppScrollbarState();
}

class _AppScrollbarState extends State<AppScrollbar> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: _scrollController,
      thumbVisibility: !PlatformUtil.isMobile,
      child: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: widget.child,
      ),
    );
  }
}
