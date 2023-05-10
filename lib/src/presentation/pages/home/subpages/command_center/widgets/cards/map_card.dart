import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/text/command_center_text_theme.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/map_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MapCard extends StatefulWidget {
  const MapCard({super.key});

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
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.width / 4,
        child: Expanded(
          child: Column(
            children: [
              const Expanded(
                child: MapChart(),
              ),
              const SizedBox(height: 20),
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
        style: CommandCenterTextTheme.of(context)?.cardFooterTextStyle,
      ),
    );
  }
}
