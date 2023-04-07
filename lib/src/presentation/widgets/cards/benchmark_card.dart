import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/app_common_card.dart';
import 'package:benchmark/src/presentation/widgets/charts/tornado/tornado_chart.dart';
import 'package:flutter/material.dart';

class BenchmarkCard extends StatefulWidget {
  const BenchmarkCard({
    super.key,
    this.models = const [],
    this.width,
    this.selectedDate,
  });

  final List<TornadoEntity> models;
  final double? width;
  final String? selectedDate;

  @override
  State<BenchmarkCard> createState() => _BenchmarkCardState();
}

class _BenchmarkCardState extends State<BenchmarkCard> {
  @override
  Widget build(BuildContext context) {
    return AppCommonCard(
      width: widget.width,
      // height: MediaQuery.of(context).size.height / 3,
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            _buildTitle(space: constraints.maxWidth / 20),
            const SizedBox(height: 10),
            TornadoChart(models: widget.models),
            const SizedBox(height: 10),
          ],
        );
      }),
    );
  }

  Widget _buildTitle({
    double? space,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.selectedDate ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: space),
        Expanded(
          child: Row(
            children: const [
              Text(
                'Benchmark-2022',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
