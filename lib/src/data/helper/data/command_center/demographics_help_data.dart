import 'package:benchmark/src/data/helper/models/command_center/demographics/demographics_help_model.dart';

class DemographicsHelpData {
  static List<DemographicsHelpModel> data = [
    const DemographicsHelpModel(
      category: '13-17',
      male: 500,
      female: 2500,
      unspecified: 0,
    ),
    const DemographicsHelpModel(
      category: '18-24',
      male: 10700,
      female: 16500,
      unspecified: 0,
    ),
    const DemographicsHelpModel(
      category: '25-34',
      male: 15000,
      female: 16000,
      unspecified: 5300,
    ),
    const DemographicsHelpModel(
      category: '35-44',
      male: 12000,
      female: 8500,
      unspecified: 1500,
    ),
    const DemographicsHelpModel(
      category: '45-54',
      male: 5000,
      female: 4700,
      unspecified: 1800,
    ),
    const DemographicsHelpModel(
      category: '55-64',
      male: 5100,
      female: 2400,
      unspecified: 600,
    ),
    const DemographicsHelpModel(
      category: '65+',
      male: 1300,
      female: 1800,
      unspecified: 500,
    ),
  ];
}
