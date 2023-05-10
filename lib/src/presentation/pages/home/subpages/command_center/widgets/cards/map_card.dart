import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/widgets/charts/map_chart.dart';
import 'package:benchmark/src/presentation/widgets/cards/generic/command_center_card.dart';
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
        title: 'Salesforse Accounts by country',
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
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Invalid state information provided fo 646 of 13124 accounts',
        style: TextStyle(
          fontSize: 12,
          color: AppColors.greyE6E,
        ),
      ),
    );
  }
}
