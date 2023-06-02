import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/data/command_center/traffic_help_data.dart';
import 'package:benchmark/src/data/helper/models/command_center/traffic/traffic_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/containers/divider_gradient_container.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/area/area_chart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TrafficCard extends StatefulWidget {
  const TrafficCard({
    super.key,
    this.width,
  });

  final double? width;

  @override
  State<TrafficCard> createState() => _TrafficCardState();
}

class _TrafficCardState extends State<TrafficCard> {
  final numberFormat = FormatUtil.int;
  final doubleFormat = FormatUtil.doublePrecTwo;

  @override
  Widget build(BuildContext context) {
    return CommandCenterCard(
      minWidth: 246,
      width: widget.width,
      title: LocaleKeys.commandCenter_trafficHeader
          .tr(args: ['QuickBooks & Google Analytics:']),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    final data = TrafficHelpData.data;
    return Column(
      children: [
        _buildSection(
          data: data.advertising,
          usePrefix: true,
          iconPath: Assets.icons.quickbooksLogo.path,
          title: LocaleKeys.commandCenter_advertisingAndPromotion.tr(),
          percentIconColor: AppColors.redC4C,
        ),
        const SizedBox(height: 15),
        const DividerGradientContainer(),
        const SizedBox(height: 15),
        _buildSection(
          data: data.session,
          iconPath: Assets.icons.googleAnalyticsLogo.path,
          title: LocaleKeys.commandCenter_sessionTraffic.tr(),
          percentIconColor: AppColors.primaryColor,
        ),
      ],
    );
  }

  Widget _buildSection({
    TrafficDataHelpModel? data,
    bool usePrefix = false,
    required String iconPath,
    required String title,
    Color? percentIconColor,
  }) {
    final value = numberFormat.format(data?.value ?? 0);
    return Column(
      children: [
        _buildSectionFirstRow(
          iconPath: iconPath,
          title: title,
          value: usePrefix ? '\$$value' : value,
        ),
        const SizedBox(height: 10),
        _buildSectionSecondRow(
          data: data,
          percentIconColor: percentIconColor,
          usePrefix: usePrefix,
        ),
      ],
    );
  }

  Widget _buildSectionFirstRow({
    required String iconPath,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        _buildIcon(iconPath),
        const SizedBox(width: 10),
        Expanded(child: _buildSectionTitle(text: title)),
        const SizedBox(width: 10),
        _buildMainValue(text: value),
      ],
    );
  }

  Widget _buildIcon(
    String iconPath,
  ) {
    return Image.asset(
      iconPath,
      width: 25,
      height: 25,
    );
  }

  Widget _buildSectionTitle({
    required String text,
  }) {
    return TextOneLine(
      text,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withFontWeight(FontWeight.w400)
          .withOpacity(0.75),
    );
  }

  Widget _buildMainValue({
    required String text,
  }) {
    return TextOneLine(
      text,
      style: CommandCenterTextTheme.of(context)
          ?.headerMediumTextStyle
          ?.withOpacity(0.75),
    );
  }

  Widget _buildSectionSecondRow({
    TrafficDataHelpModel? data,
    bool usePrefix = false,
    Color? percentIconColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: _buildGraph(data),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildSecondRowTrailing(
            data: data,
            usePrefix: usePrefix,
            iconColor: percentIconColor,
          ),
        )
      ],
    );
  }

  Widget _buildGraph(TrafficDataHelpModel? data) {
    return SizedBox(
      height: 50,
      child: AreaChart(
        values: data?.chartValues ?? [],
        maxExtent: data?.getChartMaxExtent(),
        isCommandCenter: true,
      ),
    );
  }

  Widget _buildSecondRowTrailing({
    TrafficDataHelpModel? data,
    bool usePrefix = false,
    Color? iconColor,
  }) {
    final persent = doubleFormat.format(data?.getPercent());
    final prev = numberFormat.format(data?.prevValue ?? 0);
    final prevValue = usePrefix ? '\$$prev' : prev;
    final prevTr = LocaleKeys.commandCenter_prev.tr();
    final prevResult = 'vs $prevValue ($prevTr)';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildPercentValue(
          text: '$persent%',
          iconColor: iconColor,
        ),
        const SizedBox(height: 5),
        _buildPrevValue(
          text: prevResult,
        ),
      ],
    );
  }

  Widget _buildPercentValue({
    required String text,
    Color? iconColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: CommandCenterTextTheme.of(context)
              ?.bodyMediumTextStyle
              ?.copyWith(height: 1)
              .withBoldFontWeight(),
        ),
        Transform.rotate(
          angle: -pi / 2,
          child: Icon(
            Icons.play_arrow,
            size: 20,
            color: iconColor,
          ),
        ),
      ],
    );
  }

  Widget _buildPrevValue({
    required String text,
  }) {
    return Text(
      text,
      maxLines: 2,
      style: CommandCenterTextTheme.of(context)
          ?.bodyMediumTextStyle
          ?.copyWith(height: 1)
          .withOpacity(0.5),
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
    );
  }
}
