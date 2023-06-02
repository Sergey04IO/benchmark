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

class CommandCenterTabletLayout extends StatefulWidget {
  const CommandCenterTabletLayout({
    super.key,
    this.useAnimations = false,
  });

  final bool useAnimations;

  @override
  State<CommandCenterTabletLayout> createState() =>
      _CommandCenterTabletLayoutState();
}

class _CommandCenterTabletLayoutState extends State<CommandCenterTabletLayout> {
  final double _padding = 8;

  // first column
  final double _followersCardHeight = 265;
  final double _videoStatsHeight = 180;
  final double _mapCardHeight = 313;
  final double _multiCardDefaultHeight = 300;
  late double _multiCardHeight;

  // second column
  final double _leedsCardHeight = 164;
  final double _viewsPerUserCardHeight = 285;
  final _trafficCardKey = GlobalKey();
  final _cacCardKey = GlobalKey();
  final _callDurationCardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _multiCardHeight = _multiCardDefaultHeight;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _updateLayout();
      });
      return _buildContent(context);
    });
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildFirstColumn(context),
              ),
              SizedBox(width: _padding),
              Expanded(
                child: _buildSecondColumn(context),
              ),
            ],
          ),
          SizedBox(height: _padding),
          const DemographicsCard(),
        ],
      ),
    );
  }

  Widget _buildFirstColumn(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FollowersCard(
          height: _followersCardHeight,
        ),
        SizedBox(height: _padding),
        VideoStatsCard(
          height: _videoStatsHeight,
        ),
        SizedBox(height: _padding),
        MultiChartCard(
          useAnimations: widget.useAnimations,
          height: _multiCardHeight,
        ),
        SizedBox(height: _padding),
        MapCard(
          height: _mapCardHeight,
        ),
      ],
    );
  }

  Widget _buildSecondColumn(BuildContext context) {
    return Column(
      children: [
        TrafficCard(key: _trafficCardKey),
        SizedBox(height: _padding),
        CacCard(key: _cacCardKey),
        SizedBox(height: _padding),
        LeadsCard(
          height: _leedsCardHeight,
        ),
        SizedBox(height: _padding),
        CallDurationCard(key: _callDurationCardKey),
        SizedBox(height: _padding),
        ViewsPerUserCard(
          height: _viewsPerUserCardHeight,
        ),
      ],
    );
  }

  void _updateLayout() {
    final isUpdate = _updateMultiCardHeight();
    if (isUpdate) {
      setState(() {});
    }
  }

  bool _updateMultiCardHeight() {
    final firstColumnHeight = _getFirstColumnHeight();
    final secondColumnHeight = _getSecondColumnHeight();

    if (secondColumnHeight != null) {
      if (secondColumnHeight > firstColumnHeight) {
        final diff = secondColumnHeight - firstColumnHeight;
        _multiCardHeight = _multiCardHeight + diff;
      }
      if (secondColumnHeight < firstColumnHeight) {
        final diff = firstColumnHeight - secondColumnHeight;
        _multiCardHeight = _multiCardHeight - diff;
      }
      if (secondColumnHeight == firstColumnHeight) {
        return false;
      }
      return true;
    }
    return false;
  }

  double _getFirstColumnHeight() {
    /// space between widgets in the column. _padding * number of widgets minus 1.
    final extraHeight = _padding * 3;
    final result = _followersCardHeight +
        _videoStatsHeight +
        _mapCardHeight +
        _multiCardHeight +
        extraHeight;
    return result;
  }

  double? _getSecondColumnHeight() {
    /// space between widgets in the column. _padding * number of widgets minus 1.
    final extraHeight = _padding * 4;
    final trafficCardHeight = _trafficCardKey.currentContext?.size?.height;
    final cacCardHeight = _cacCardKey.currentContext?.size?.height;
    final callDurationHeight =
        _callDurationCardKey.currentContext?.size?.height;
    if (trafficCardHeight == null ||
        cacCardHeight == null ||
        callDurationHeight == null) return null;
    final result = trafficCardHeight +
        cacCardHeight +
        _leedsCardHeight +
        callDurationHeight +
        _viewsPerUserCardHeight +
        extraHeight;
    return result;
  }
}
