import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/views_per_user_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ViewsPerUserCard extends StatefulWidget {
  const ViewsPerUserCard({
    super.key,
    this.height = 270,
    this.width,
  });

  final double height;
  final double? width;

  @override
  State<ViewsPerUserCard> createState() => _ViewsPerUserCardState();
}

class _ViewsPerUserCardState extends State<ViewsPerUserCard> {
  late double cardWidth;
  final double cardMinWidth = 300;
  late String title;
  @override
  void initState() {
    super.initState();
    final durationPartTitle =
        LocaleKeys.commandCenter_lastDays.tr(args: ['30']);
    title = LocaleKeys.commandCenter_viewsPerUserCardTitle
        .tr(args: ['Alexa', durationPartTitle]);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = widget.width ?? constraints.maxWidth;
      cardWidth = width > cardMinWidth ? width : cardMinWidth;
      return CommandCenterCard(
        width: cardWidth,
        height: widget.height,
        minWidth: cardMinWidth,
        title: title,
        child: _buildContent(),
      );
    });
  }

  Widget _buildContent() {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 5),
          _buildLegend(),
          const SizedBox(height: 20),
          const Expanded(child: ViewsPerUserChart()),
        ],
      ),
    );
  }

  Widget _buildLegend() {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        runSpacing: 10,
        spacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          _buildAmazingText(),
          _buildGoodText(),
          _buildClipstoreText(),
        ],
      ),
    );
  }

  Widget _buildAmazingText() {
    return Text(
      'amazingclips.com',
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.copyWith(color: AppColors.blue0F3),
    );
  }

  Widget _buildGoodText() {
    return Text(
      'goodclips.com',
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.copyWith(color: AppColors.green528),
    );
  }

  Widget _buildClipstoreText() {
    return Text(
      'clipstore.com',
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.copyWith(color: AppColors.orangeE2A),
    );
  }
}
