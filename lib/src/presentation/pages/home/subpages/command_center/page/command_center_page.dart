import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/desktop_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/mobile_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/tablet_layout.dart';
import 'package:benchmark/src/presentation/widgets/scrolling/app_scrollbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommandCenterPage extends StatefulWidget {
  const CommandCenterPage({super.key});

  @override
  State<CommandCenterPage> createState() => _CommandCenterPageState();
}

class _CommandCenterPageState extends State<CommandCenterPage> {
  bool useAnimations = false;
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return AppScrollbar(
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (width > 1200) {
      return const CommandCenterDesktopLayout();
    } else if (width <= 1200 && width >= 750) {
      return const CommandCenterTabletLayout();
    }
    return const CommandCenterMobileLayout();
  }
}
