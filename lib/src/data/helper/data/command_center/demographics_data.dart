import 'package:benchmark/src/app/core/generated/translations/locale_keys.g.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';
import 'package:easy_localization/easy_localization.dart';

class DemographicsHelpData {
  static Map<Sample, DemographicsHelpModel> data = {
    Sample.sample1: DemographicsHelpModel(
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
    ),
    Sample.sample2: DemographicsHelpModel(
      clusters: [
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_maleMale.tr(),
          color: AppColors.blueFF7,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 5000,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 3400,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 9800,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 7500,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 1000,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 800,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 500,
            ),
          ],
        ),
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_Female.tr(),
          color: AppColors.blue0F3,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 5000,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 25600,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 36500,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 14700,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 6300,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 4500,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 2700,
            ),
          ],
        ),
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_unspecified.tr(),
          color: AppColors.blue2BB,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 200,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 1500,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 12500,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 7700,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 4000,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 5500,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 2300,
            ),
          ],
        ),
      ],
    ),
    Sample.sample3: DemographicsHelpModel(
      clusters: [
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_maleMale.tr(),
          color: AppColors.blueFF7,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 24300,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 55300,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 31500,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 5000,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 16400,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 8900,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 4200,
            ),
          ],
        ),
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_Female.tr(),
          color: AppColors.blue0F3,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 10800,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 20000,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 5000,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 15000,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 24300,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 7000,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 4000,
            ),
          ],
        ),
        DemographicsClusterHelpModel(
          name: LocaleKeys.commandCenter_unspecified.tr(),
          color: AppColors.blue2BB,
          items: const [
            DemographicsItemHelpModel(
              category: '13-17',
              value: 3200,
            ),
            DemographicsItemHelpModel(
              category: '18-24',
              value: 700,
            ),
            DemographicsItemHelpModel(
              category: '25-34',
              value: 2900,
            ),
            DemographicsItemHelpModel(
              category: '35-44',
              value: 4600,
            ),
            DemographicsItemHelpModel(
              category: '45-54',
              value: 200,
            ),
            DemographicsItemHelpModel(
              category: '55-64',
              value: 3000,
            ),
            DemographicsItemHelpModel(
              category: '65+',
              value: 200,
            ),
          ],
        ),
      ],
    ),
  };
}
