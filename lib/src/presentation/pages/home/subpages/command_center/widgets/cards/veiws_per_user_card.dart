import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/views_per_user/views_per_user_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/views_per_user_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ViewsPerUserCard extends StatefulWidget {
  const ViewsPerUserCard({
    super.key,
    this.height = 270,
    this.width,
    this.model,
  });

  final double height;
  final double? width;

  final ViewsPerUserHelpModel? model;

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
        .tr(args: [durationPartTitle]);
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
    if (widget.model == null) return const SizedBox.shrink();
    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 5),
          _buildLegend(),
          const SizedBox(height: 20),
          Expanded(
            child: ViewsPerUserChart(
              model: widget.model!,
            ),
          ),
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
        children: _getLegendData(),
      ),
    );
  }

  List<Widget> _getLegendData() {
    final items = widget.model?.clusters
        .map((item) => _buildLegendItem(item.name, item.color))
        .toList();
    return items ?? [];
  }

  Widget _buildLegendItem(String? text, Color? color) {
    return Text(
      text ?? '',
      style: CommandCenterTextTheme.of(context)
          ?.bodySmallTextStyle
          ?.copyWith(color: color),
    );
  }
}
