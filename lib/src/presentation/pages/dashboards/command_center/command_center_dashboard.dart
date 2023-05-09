import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/presentation/widgets/scaffold/common_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommandCenterDashboardPage extends StatelessWidget {
  const CommandCenterDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }
}
