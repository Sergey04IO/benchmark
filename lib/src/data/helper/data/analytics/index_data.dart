import 'package:benchmark/src/data/helper/models/analytics/index/index_help_model.dart';

class IndexHelpData {
  static Map<String, List<IndexHelpModel>> models = {
    'NOV-2022': const [
      IndexHelpModel(
        title: 'Debt Margin',
        barValues: [18, 37, 75, 39],
      ),
      IndexHelpModel(
        title: 'C/I Ratio',
        barValues: [59, 78, 40, 35],
      ),
      IndexHelpModel(
        title: 'Cost of Risk',
        barValues: [25, 59, 78, 85],
      ),
    ],
    'DEC-2022': const [
      IndexHelpModel(
        title: 'Debt Margin',
        barValues: [85, 13, 28, 66],
      ),
      IndexHelpModel(
        title: 'C/I Ratio',
        barValues: [21, 49, 10, 93],
      ),
      IndexHelpModel(
        title: 'Cost of Risk',
        barValues: [72, 31, 27, 13],
      ),
    ],
    'JAN-2023': const [
      IndexHelpModel(
        title: 'Debt Margin',
        barValues: [34, 41, 95, 8],
      ),
      IndexHelpModel(
        title: 'C/I Ratio',
        barValues: [76, 15, 68, 50],
      ),
      IndexHelpModel(
        title: 'Cost of Risk',
        barValues: [25, 69, 78, 80],
      ),
    ],
    'FEB-2023': const [
      IndexHelpModel(
        title: 'Debt Margin',
        barValues: [59, 87, 34, 70],
      ),
      IndexHelpModel(
        title: 'C/I Ratio',
        barValues: [33, 57, 29, 30],
      ),
      IndexHelpModel(
        title: 'Cost of Risk',
        barValues: [74, 27, 31, 38],
      ),
    ],
  };
}
