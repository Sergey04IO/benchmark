import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommandCenterPage extends StatelessWidget {
  const CommandCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }
}
