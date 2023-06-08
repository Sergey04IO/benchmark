import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:easy_localization/easy_localization.dart';

class DemographicsHelpData {
  static DemographicsHelpModel data = DemographicsHelpModel(
    clusters: [
      DemographicsClusterHelpModel(
        name: LocaleKeys.commandCenter_maleMale.tr(),
        color: AppColors.blueFF7,
        items: const [
          DemographicsItemHelpModel(
            category: '13-17',
            value: 500,
          ),
          DemographicsItemHelpModel(
            category: '18-24',
            value: 10700,
          ),
          DemographicsItemHelpModel(
            category: '25-34',
            value: 15000,
          ),
          DemographicsItemHelpModel(
            category: '35-44',
            value: 12000,
          ),
          DemographicsItemHelpModel(
            category: '45-54',
            value: 5000,
          ),
          DemographicsItemHelpModel(
            category: '55-64',
            value: 5100,
          ),
          DemographicsItemHelpModel(
            category: '65+',
            value: 1300,
          ),
        ],
      ),
      DemographicsClusterHelpModel(
        name: LocaleKeys.commandCenter_Female.tr(),
        color: AppColors.blue0F3,
        items: const [
          DemographicsItemHelpModel(
            category: '13-17',
            value: 2500,
          ),
          DemographicsItemHelpModel(
            category: '18-24',
            value: 16500,
          ),
          DemographicsItemHelpModel(
            category: '25-34',
            value: 16000,
          ),
          DemographicsItemHelpModel(
            category: '35-44',
            value: 8500,
          ),
          DemographicsItemHelpModel(
            category: '45-54',
            value: 4700,
          ),
          DemographicsItemHelpModel(
            category: '55-64',
            value: 2400,
          ),
          DemographicsItemHelpModel(
            category: '65+',
            value: 1800,
          ),
        ],
      ),
      DemographicsClusterHelpModel(
        name: LocaleKeys.commandCenter_unspecified.tr(),
        color: AppColors.blue2BB,
        items: const [
          DemographicsItemHelpModel(
            category: '13-17',
            value: 0,
          ),
          DemographicsItemHelpModel(
            category: '18-24',
            value: 0,
          ),
          DemographicsItemHelpModel(
            category: '25-34',
            value: 5300,
          ),
          DemographicsItemHelpModel(
            category: '35-44',
            value: 1500,
          ),
          DemographicsItemHelpModel(
            category: '45-54',
            value: 1800,
          ),
          DemographicsItemHelpModel(
            category: '55-64',
            value: 600,
          ),
          DemographicsItemHelpModel(
            category: '65+',
            value: 500,
          ),
        ],
      ),
    ],
  );
  // static List<DemographicsHelpModel> data = [
  //   const DemographicsHelpModel(
  //     category: '13-17',
  //     male: 500,
  //     female: 2500,
  //     unspecified: 0,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '18-24',
  //     male: 10700,
  //     female: 16500,
  //     unspecified: 0,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '25-34',
  //     male: 15000,
  //     female: 16000,
  //     unspecified: 5300,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '35-44',
  //     male: 12000,
  //     female: 8500,
  //     unspecified: 1500,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '45-54',
  //     male: 5000,
  //     female: 4700,
  //     unspecified: 1800,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '55-64',
  //     male: 5100,
  //     female: 2400,
  //     unspecified: 600,
  //   ),
  //   const DemographicsHelpModel(
  //     category: '65+',
  //     male: 1300,
  //     female: 1800,
  //     unspecified: 500,
  //   ),
  // ];
}
