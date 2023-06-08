import 'package:benchmark/src/data/helper/models/analytics/area/area_help_model.dart';

class AreaHelpData {
  static Map<String, List<AreaHelpModel>> models = {
    'NOV-2022': const [
      AreaHelpModel(
        title: 'C/I all Data',
        unit: '%',
        value: 1.4,
        maxValue: 1.6,
        points: [
          0.5,
          0.7,
          0.5,
          0.9,
          1.4,
        ],
      ),
      AreaHelpModel(
        title: 'Debt Margin',
        unit: 'EUR',
        value: 1897,
        maxValue: 3500,
        points: [
          2100,
          2700,
          2500,
          2100,
          1897,
        ],
      ),
      AreaHelpModel(
        title: 'Risk Weight Ratio',
        unit: '%',
        value: 9.7,
        maxValue: 18,
        points: [
          15,
          8,
          11,
          12,
          9.7,
        ],
      ),
    ],
    'DEC-2022': const [
      AreaHelpModel(
        title: 'C/I all Data',
        unit: '%',
        value: 3.5,
        points: [
          0.9,
          3.0,
          0.2,
          2.1,
          3.4,
        ],
      ),
      AreaHelpModel(
        title: 'Debt Margin',
        unit: 'EUR',
        value: 4000,
        points: [
          1200,
          2000,
          800,
          300,
          2500,
        ],
      ),
      AreaHelpModel(
        title: 'Risk Weight Ratio',
        unit: '%',
        value: 24,
        points: [
          12,
          15,
          3,
          7,
          21,
        ],
      ),
    ],
    'JAN-2023': const [
      AreaHelpModel(
        title: 'C/I all Data',
        unit: '%',
        value: 1.6,
        points: [
          1.5,
          0.2,
          1.4,
          1.0,
          1.6,
        ],
      ),
      AreaHelpModel(
        title: 'Debt Margin',
        unit: 'EUR',
        value: 10000,
        points: [
          1000,
          5000,
          7000,
          8000,
          4231,
        ],
      ),
      AreaHelpModel(
        title: 'Risk Weight Ratio',
        unit: '%',
        value: 19,
        points: [
          7,
          19,
          3,
          16,
          9.7,
        ],
      ),
    ],
    'FEB-2023': const [
      AreaHelpModel(
        title: 'C/I all Data',
        unit: '%',
        value: 0.9,
        points: [
          0.3,
          0.6,
          0.9,
          0.7,
          0.8,
        ],
      ),
      AreaHelpModel(
        title: 'Debt Margin',
        unit: 'EUR',
        value: 3200,
        points: [
          900,
          1200,
          1500,
          2000,
          2500,
        ],
      ),
      AreaHelpModel(
        title: 'Risk Weight Ratio',
        unit: '%',
        value: 25,
        points: [
          15,
          17,
          13,
          19,
          18,
        ],
      ),
    ],
  };
}
