import 'package:benchmark/src/app/core/extensions/text_style_extension.dart';
import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/map_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MapCard extends StatefulWidget {
  const MapCard({
    super.key,
    this.height = 313,
    this.width,
  });

  final double height;
  final double? width;

  @override
  State<MapCard> createState() => _MapCardState();
}

class _MapCardState extends State<MapCard> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 200,
        minWidth: 350,
      ),
      child: CommandCenterCard(
        title: LocaleKeys.commandCenter_mapCardHeader.tr(),
        height: widget.height,
        width: widget.width,
        child: Expanded(
          child: Column(
            children: [
              const Expanded(
                child: MapChart(),
              ),
              const SizedBox(height: 5),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        LocaleKeys.commandCenter_mapCardFooter.tr(
          args: ['646', '13124'],
        ),
        style: CommandCenterTextTheme.of(context)
            ?.bodySmallTextStyle
            ?.withOpacity(0.25),
      ),
    );
  }
}
