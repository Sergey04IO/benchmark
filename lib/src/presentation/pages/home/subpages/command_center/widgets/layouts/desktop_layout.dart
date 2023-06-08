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

class CommandCenterDesktopLayout extends StatefulWidget {
  const CommandCenterDesktopLayout({
    super.key,
    this.useAnimations = true,
  });

  final bool useAnimations;

  @override
  State<CommandCenterDesktopLayout> createState() =>
      _CommandCenterDesktopLayoutState();
}

class _CommandCenterDesktopLayoutState
    extends State<CommandCenterDesktopLayout> {
  final double _padding = 8;

  // First column
  final double _followersCardHeight = 265;
  final double _videoStatsHeight = 180;
  double _viewsPerUserCardHeight = 270;
  final _callDurationCardKey = GlobalKey();

  // Second column
  final double _demographicsCardHeight = 270;

  // Second column first part
  final double _mapCardHeight = 313;
  double _multiCardHeight = 300;

  // Second column second part
  final double _leedsCardHeight = 164;
  final _trafficCardKey = GlobalKey();
  final _cacCardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _updateLayout();
      });
      return _buildContent();
    });
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _buildFirstColumn(),
          ),
          SizedBox(width: _padding),
          Expanded(
            flex: 2,
            child: _buildSecondColumn(),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FollowersCard(
          height: _followersCardHeight,
          model: FollowersHelpData.data,
        ),
        SizedBox(height: _padding),
        VideoStatsCard(
          height: _videoStatsHeight,
          model: VideoStatsHelpData.data,
        ),
        SizedBox(height: _padding),
        CallDurationCard(
          key: _callDurationCardKey,
          model: CallDurationHelpData.data,
        ),
        SizedBox(height: _padding),
        ViewsPerUserCard(
          height: _viewsPerUserCardHeight,
          model: ViewsPerUserHelpData.data,
        ),
      ],
    );
  }

  Widget _buildSecondColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildSecondColumnFirstPart(),
            ),
            SizedBox(width: _padding),
            Expanded(
              child: _buildSecondColumnSecondPart(),
            ),
          ],
        ),
        SizedBox(height: _padding),
        DemographicsCard(
          height: _demographicsCardHeight,
          model: DemographicsHelpData.data,
        ),
      ],
    );
  }

  Widget _buildSecondColumnFirstPart() {
    return Column(
      children: [
        MultiChartCard(
          useAnimations: widget.useAnimations,
          height: _multiCardHeight,
          model: MultiChartHelpData.data,
        ),
        SizedBox(height: _padding),
        MapCard(
          height: _mapCardHeight,
          model: MapHelpData.data,
        ),
      ],
    );
  }

  Widget _buildSecondColumnSecondPart() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TrafficCard(
          key: _trafficCardKey,
          model: TrafficHelpData.data,
        ),
        SizedBox(height: _padding),
        CacCard(
          key: _cacCardKey,
          model: CacHelpData.data,
        ),
        SizedBox(height: _padding),
        LeadsCard(
          height: _leedsCardHeight,
          model: LeadsHelpData.data,
        ),
      ],
    );
  }

  void _updateLayout() {
    final isUpdate = _updateMultiCardHeight();
    final isUpdate2 = _updateViewsPerUserCardHeight();
    if (isUpdate || isUpdate2) {
      setState(() {});
    }
  }

  bool _updateMultiCardHeight() {
    final (firstColumnHeight, secondColumnHeight) =
        _getSecondColumnPartsHeight();

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

  bool _updateViewsPerUserCardHeight() {
    final firstColumnHeight = _getFirstColumnHeight();
    final secondColumnHeight = _getSecondColumnHeight();

    if (firstColumnHeight != null && secondColumnHeight != null) {
      if (secondColumnHeight > firstColumnHeight) {
        final diff = secondColumnHeight - firstColumnHeight;
        _viewsPerUserCardHeight = _viewsPerUserCardHeight + diff;
      }
      if (secondColumnHeight < firstColumnHeight) {
        final diff = firstColumnHeight - secondColumnHeight;
        _viewsPerUserCardHeight = _viewsPerUserCardHeight - diff;
      }
      if (secondColumnHeight == firstColumnHeight) {
        return false;
      }
      return true;
    }
    return false;
  }

  double? _getFirstColumnHeight() {
    final callDurationHeight =
        _callDurationCardKey.currentContext?.size?.height;

    /// space between widgets in the column. _padding * number of widgets minus 1.
    final extraHeight = _padding * 3;

    if (callDurationHeight == null) return null;

    final result = _followersCardHeight +
        _videoStatsHeight +
        _viewsPerUserCardHeight +
        callDurationHeight +
        extraHeight;

    return result;
  }

  double? _getSecondColumnHeight() {
    final (_, secondPartHeight) = _getSecondColumnPartsHeight();

    if (secondPartHeight == null) return null;

    /// space between widgets in the column. _padding * number of widgets minus 1.
    final extraHeight = _padding;

    final result = secondPartHeight + _demographicsCardHeight + extraHeight;

    return result;
  }

  (double first, double? second) _getSecondColumnPartsHeight() {
    final trafficCardHeight = _trafficCardKey.currentContext?.size?.height;
    final cacCardHeight = _cacCardKey.currentContext?.size?.height;

    /// space between widgets in the column. _padding * number of widgets minus 1.
    final firstExtraHeight = _padding;
    final fsecondExtraHeight = _padding * 2;

    final first = _multiCardHeight + _mapCardHeight + firstExtraHeight;

    if (trafficCardHeight == null || cacCardHeight == null) {
      return (first, null);
    }

    final second = _leedsCardHeight +
        trafficCardHeight +
        cacCardHeight +
        fsecondExtraHeight;

    return (first, second);
  }
}
