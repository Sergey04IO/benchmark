import 'package:benchmark/src/domain/entities/tornado/tornado_entity.dart';
import 'package:benchmark/src/presentation/widgets/charts/tornado/tornado_chart_item.dart';
import 'package:flutter/material.dart';

class TornadoChart extends StatefulWidget {
  const TornadoChart({
    super.key,
    this.models = const [],
  });

  final List<TornadoEntity> models;

  @override
  State<TornadoChart> createState() => _TornadoChartState();
}

class _TornadoChartState extends State<TornadoChart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.models.length,
      itemBuilder: (context, index) {
        final model = widget.models[index];
        return TornadoChartItem(
          model: model,
        );
      },
    );
  }
}
