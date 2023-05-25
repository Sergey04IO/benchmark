import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/data/command_center/call_duration_data.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/area/area_chart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CallDurationCard extends StatelessWidget {
  const CallDurationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      title: LocaleKeys.commandCenter_callDurationHeader.tr(args: ['CallRail']),
      minWidth: 250,
      width: MediaQuery.of(context).size.width / 3,
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildCompanyName(context),
        const SizedBox(height: 20),
        _buildDataRow(context),
      ],
    );
  }

  Widget _buildCompanyName(BuildContext context) {
    return Text(
      LocaleKeys.commandCenter_companyName.tr(
        args: ['The KIIp Factory'],
      ),
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.withOpacity(0.75),
    );
  }

  Widget _buildDataRow(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildTimeStats(context),
          const Expanded(
            child: SizedBox(width: 10),
          ),
          Expanded(
            flex: 3,
            child: _buildGraph(),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeStats(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          CallDurationData.data.callTime ?? '',
          style: CommandCenterTextTheme.of(context)
              ?.headerGiganticTextStyle
              ?.withOpacity(0.75),
        ),
        Text(
          LocaleKeys.commandCenter_basedOnCalls.tr(args: [
            CallDurationData.data.numberOfCalls.toString(),
          ]),
          style: CommandCenterTextTheme.of(context)
              ?.bodySmallTextStyle
              ?.withOpacity(0.75),
        ),
      ],
    );
  }

  Widget _buildGraph() {
    return AreaChart(
      values: CallDurationData.data.chartValues,
      maxExtent: CallDurationData.data.getChartMaxExtent(),
      isCommandCenter: true,
    );
  }
}
