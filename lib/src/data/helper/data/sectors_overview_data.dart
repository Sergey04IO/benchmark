import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/models/ui_models/sectors_overview/sectors_overview_ui_model.dart';

class SectorsOverviewData {
  static Map<String, List<SectorsOverviewUIModel>> models = {
    'NOV-2022': const [
      SectorsOverviewUIModel(
        name: 'Agri',
        value: 1234567,
        color: AppColors.deepGreen,
      ),
      SectorsOverviewUIModel(
        name: 'CRE',
        value: 8500000,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Shipping',
        value: 11500000,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Tourism',
        value: 9700000,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Your sector',
        value: 9400000,
        color: AppColors.secondaryColor,
      ),
    ],
    'DEC-2022': const [
      SectorsOverviewUIModel(
        name: 'Agri',
        value: 21847921,
        color: AppColors.deepGreen,
      ),
      SectorsOverviewUIModel(
        name: 'CRE',
        value: 11876392,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Shipping',
        value: 9278366,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Tourism',
        value: 15876234,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Your sector',
        value: 17276582,
        color: AppColors.secondaryColor,
      ),
    ],
    'JAN-2023': const [
      SectorsOverviewUIModel(
        name: 'Agri',
        value: 13875294,
        color: AppColors.deepGreen,
      ),
      SectorsOverviewUIModel(
        name: 'CRE',
        value: 4376279,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Shipping',
        value: 15876928,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Tourism',
        value: 6768764,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Your sector',
        value: 17765489,
        color: AppColors.secondaryColor,
      ),
    ],
    'FEB-2023': const [
      SectorsOverviewUIModel(
        name: 'Agri',
        value: 2975423,
        color: AppColors.deepGreen,
      ),
      SectorsOverviewUIModel(
        name: 'CRE',
        value: 12847495,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Shipping',
        value: 8765494,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Tourism',
        value: 14876493,
        color: AppColors.primaryColor,
      ),
      SectorsOverviewUIModel(
        name: 'Your sector',
        value: 6947643,
        color: AppColors.secondaryColor,
      ),
    ],
  };
}
