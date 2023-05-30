import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/data/command_center/demographics_help_data.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/demographics_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DemographicsCard extends StatefulWidget {
  const DemographicsCard({super.key});

  @override
  State<DemographicsCard> createState() => _DemographicsCardState();
}

class _DemographicsCardState extends State<DemographicsCard> {
  late double cardWidth;
  @override
  Widget build(BuildContext context) {
    cardWidth = MediaQuery.of(context).size.width / 2;
    return CommandCenterCard(
      minWidth: 300,
      width: cardWidth,
      title: LocaleKeys.commandCenter_demographics.tr(args: ['Facebook']),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return _buildChart();
  }

  Widget _buildChart() {
    return Column(
      children: [
        const SizedBox(height: 10),
        _buildLegend(),
        const DemographicsChart(),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildLegend() {
    return Padding(
      padding: EdgeInsets.only(right: cardWidth / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildLegendItem(
            text: LocaleKeys.commandCenter_maleMale.tr(),
            color: AppColors.blueFF7,
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            text: LocaleKeys.commandCenter_Female.tr(),
            color: AppColors.blue0F3,
          ),
          const SizedBox(width: 20),
          _buildLegendItem(
            text: LocaleKeys.commandCenter_unspecified.tr(),
            color: AppColors.blue2BB,
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem({
    String? text,
    Color? color,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: color,
          width: 15,
          height: 10,
        ),
        const SizedBox(width: 5),
        Text(
          text ?? '',
          style: CommandCenterTextTheme.of(context)?.bodySmallTextStyle,
        ),
      ],
    );
  }
}
