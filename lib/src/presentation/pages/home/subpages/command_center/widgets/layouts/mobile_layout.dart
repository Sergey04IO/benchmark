import 'package:benchmark/src/data/helper/data/command_center/cac_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/call_duration_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/demographics_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/followers_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/leads_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/map_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/multi_chart_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/traffic_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/video_stats_data.dart';
import 'package:benchmark/src/data/helper/data/command_center/views_per_user_data.dart';
import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/cac_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/call_duration_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/demographics_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/followers_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/leads_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/map_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/multi_chart_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/traffic_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/veiws_per_user_card.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/cards/video_stats_card.dart';
import 'package:flutter/material.dart';

class CommandCenterMobileLayout extends StatefulWidget {
  const CommandCenterMobileLayout({
    super.key,
    required this.sample,
    this.useAnimations = true,
  });

  final bool useAnimations;
  final Sample sample;

  @override
  State<CommandCenterMobileLayout> createState() =>
      _CommandCenterMobileLayoutState();
}

class _CommandCenterMobileLayoutState extends State<CommandCenterMobileLayout> {
  final double _padding = 8;
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return _buildContent();
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          FollowersCard(
            width: _getCardsWidth(),
            model: FollowersHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          VideoStatsCard(
            width: _getCardsWidth(),
            model: VideoStatsHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          CallDurationCard(
            width: _getCardsWidth(),
            model: CallDurationHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          MultiChartCard(
            useAnimations: widget.useAnimations,
            width: _getCardsWidth(),
            model: MultiChartHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          MapCard(
            width: _getCardsWidth(),
            model: MapHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          TrafficCard(
            width: _getCardsWidth(),
            model: TrafficHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          CacCard(
            width: _getCardsWidth(),
            model: CacHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          LeadsCard(
            width: _getCardsWidth(),
            model: LeadsHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          ViewsPerUserCard(
            width: _getCardsWidth(),
            model: ViewsPerUserHelpData.data[widget.sample],
          ),
          SizedBox(height: _padding),
          DemographicsCard(
            width: width,
            model: DemographicsHelpData.data[widget.sample],
          ),
        ],
      ),
    );
  }

  double _getCardsWidth() {
    if (width < 750 && width > 650) {
      return width * 0.7;
    } else if (width <= 650 && width > 550) {
      return width * 0.8;
    } else {
      return width;
    }
  }
}
