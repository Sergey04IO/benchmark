import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/desktop_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/mobile_layout.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/layouts/tablet_layout.dart';
import 'package:benchmark/src/presentation/widgets/scrolling/app_scrollbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommandCenterPage extends StatelessWidget {
  const CommandCenterPage({super.key});

  final sample = Sample.sample1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppScrollbar(
      child: _buildContent(width),
    );
  }

  Widget _buildContent(double width) {
    if (width > 1200) {
      return CommandCenterDesktopLayout(sample: sample);
    } else if (width <= 1200 && width >= 750) {
      return CommandCenterTabletLayout(sample: sample);
    }
    return CommandCenterMobileLayout(sample: sample);
  }
}
