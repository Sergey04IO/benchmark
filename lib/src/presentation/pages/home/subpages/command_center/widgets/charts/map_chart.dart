import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/utils/format_util.dart';
import 'package:benchmark/src/data/helper/models/command_center/map/map_help_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapChart extends StatefulWidget {
  const MapChart({
    super.key,
    this.models = const [],
  });

  final List<MapItemModel> models;

  @override
  State<MapChart> createState() => _MapChartState();
}

class _MapChartState extends State<MapChart> {
  MapShapeSource? _mapShapeSource;
  final NumberFormat _numberFormat = FormatUtil.int;
  late List<MapItemModel> _chartData;

  @override
  void initState() {
    super.initState();
    _chartData = widget.models;
    if (_chartData.isNotEmpty) {
      _mapShapeSource = MapShapeSource.asset(
        Assets.files.worldMap,
        shapeDataField: 'name',
        shapeColorMappers: _getShapeColorMappers(),
        dataCount: _chartData.length,
        primaryValueMapper: (index) => _chartData[index].countryName,
        shapeColorValueMapper: (index) => _chartData[index].accounts,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.models.isNotEmpty) {
      return _buildMap();
    }
    return const SizedBox.shrink();
  }

  Widget _buildMap() {
    return SfMapsTheme(
      data: SfMapsThemeData(
        shapeHoverColor: const Color.fromRGBO(176, 237, 131, 1),
      ),
      child: SfMaps(
        layers: [
          MapShapeLayer(
            source: _mapShapeSource!,
            color: Colors.blue[200],
            shapeTooltipBuilder: _buildTooltip,
            controller: MapShapeLayerController(),
          ),
        ],
      ),
    );
  }

  Widget _buildTooltip(BuildContext context, int index) {
    final country = _chartData[index].countryName;
    final accounts = _numberFormat.format(_chartData[index].accounts);
    final accountsWord = LocaleKeys.commandCenter_accounts.tr();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$country : $accounts $accountsWord.',
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }

  List<MapColorMapper> _getShapeColorMappers() {
    return [
      const MapColorMapper(
        from: 0,
        to: 100,
        color: Color.fromRGBO(169, 204, 255, 1),
        text: '{0},{100}',
      ),
      const MapColorMapper(
        from: 100,
        to: 500,
        color: Color.fromRGBO(156, 191, 247, 1),
        text: '500',
      ),
      const MapColorMapper(
        from: 500,
        to: 1000,
        color: Color.fromRGBO(148, 184, 243, 1),
        text: '1k',
      ),
      const MapColorMapper(
        from: 1000,
        to: 5000,
        color: Color.fromRGBO(110, 148, 219, 1),
        text: '5k',
      ),
      const MapColorMapper(
        from: 5000,
        to: 10000,
        color: Color.fromRGBO(78, 120, 200, 1),
        text: '10k',
      ),
      const MapColorMapper(
        from: 10000,
        to: 20000,
        color: Color.fromRGBO(78, 120, 200, 1),
        text: '20k',
      ),
      const MapColorMapper(
        from: 20000,
        to: 1000000,
        color: Color.fromRGBO(56, 98, 187, 1),
        text: '50k',
      ),
    ];
  }
}
