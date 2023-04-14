import 'dart:math';

import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/domain/entities/sector_overview/entity/sector_overview_entity.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/app_common_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/sectors_overview/sectors_overview_chart.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SectorsOverviewCard extends StatefulWidget {
  const SectorsOverviewCard({
    super.key,
    this.width,
    this.height = 400,
    this.average,
    this.models = const [],
  });

  final double? width;
  final double height;
  final num? average;
  final List<SectorOverviewEntity> models;

  @override
  State<SectorsOverviewCard> createState() => _SectorsOverviewCardState();
}

class _SectorsOverviewCardState extends State<SectorsOverviewCard> {
  late int max;
  late num average;
  final double cardMinHeight = 200;
  double height = 0;

  @override
  void initState() {
    super.initState();
    height = widget.height < cardMinHeight ? cardMinHeight : widget.height;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: cardMinHeight),
      child: AppCommonCard(
        width: widget.width,
        height: height,
        child: _buildContent(),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initValues();
  }

  @override
  void didUpdateWidget(covariant SectorsOverviewCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _initValues();
    height = widget.height < cardMinHeight ? cardMinHeight : widget.height;
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Column(
        children: [
          _buildTitle(),
          const SizedBox(height: 20),
          SectorsOverviewChart(
            height: height,
            maxValue: max,
            average: average,
            models: widget.models,
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'ROE and volume - Benchmark against other Sectors',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }

  void _initValues() {
    final values = widget.models.map((e) => e.value?.toInt() ?? 0).toList();
    max = Random().nextInt((values.max * 0.3).toInt()) + values.max;
    if (widget.average != null) {
      average = widget.average!;
    } else {
      average = values.average;
    }
  }
}
