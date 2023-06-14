import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/demographics_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DemographicsCard extends StatefulWidget {
  const DemographicsCard({
    super.key,
    this.height = 270,
    this.width,
    this.model,
  });

  final double height;
  final double? width;

  final DemographicsHelpModel? model;

  @override
  State<DemographicsCard> createState() => _DemographicsCardState();
}

class _DemographicsCardState extends State<DemographicsCard> {
  final double notGraphContentSize = 90;
  late double cardWidth;
  late double graphHeight;

  @override
  void initState() {
    super.initState();
    graphHeight = widget.height - notGraphContentSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      cardWidth = widget.width ?? constraints.maxWidth;
      return CommandCenterCard(
        minWidth: 300,
        width: cardWidth,
        height: widget.height,
        title: LocaleKeys.commandCenter_demographics.tr(),
        child: _buildContent(),
      );
    });
  }

  Widget _buildContent() {
    return _buildChart();
  }

  Widget _buildChart() {
    if (widget.model == null) return const SizedBox.shrink();
    return Column(
      children: [
        const SizedBox(height: 5),
        _buildLegend(),
        DemographicsChart(
          height: graphHeight,
          model: widget.model!,
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget _buildLegend() {
    return Padding(
      padding: EdgeInsets.only(right: cardWidth / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: _mapModelsToLegendItems(),
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

  List<Widget> _mapModelsToLegendItems() {
    final List<Widget> list = [];
    final clusters = widget.model?.clusters;
    if (clusters == null || clusters.isEmpty) {
      return [];
    }
    clusters.mapIndexed((index, cluster) {
      final widget = _buildLegendItem(text: cluster.name, color: cluster.color);
      list.add(widget);
      if (index != clusters.length - 1) {
        list.add(const SizedBox(width: 20));
      }
    }).toList();
    return list;
  }
}
