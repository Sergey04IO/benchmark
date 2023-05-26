import 'package:auto_route/auto_route.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/cac_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/leads_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/traffic_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/call_duration_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/followers_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/map_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/multi_chart_card.dart';
// import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/video_stats_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CommandCenterPage extends StatefulWidget {
  const CommandCenterPage({super.key});

  @override
  State<CommandCenterPage> createState() => _CommandCenterPageState();
}

class _CommandCenterPageState extends State<CommandCenterPage> {
  bool useAnimations = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          // child: MapCard(),
          // child: MultiChartCard(
          //   useAnimations: useAnimations,
          // ),
          // child: FollowersCard(),
          // child: VideoStatsCard(),
          // child: CallDurationCard(),
          // child: TrafficCard(),
          // child: const CacCard(),
          child: const LeadsCard(),
        ),
      ),
    );
  }
}
