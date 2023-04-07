import 'package:benchmark/src/presentation/models/ui_models/index/index_ui_model.dart';

class IndexData {
  static Map<String, List<IndexUIModel>> models = {
    'NOV-2022': const [
      IndexUIModel(
        title: 'Debt Margin',
        barValues: [18, 37, 75, 39],
      ),
      IndexUIModel(
        title: 'C/I Ratio',
        barValues: [59, 78, 40, 35],
      ),
      IndexUIModel(
        title: 'Cost of Risk',
        barValues: [25, 59, 78, 85],
      ),
    ],
    'DEC-2022': const [
      IndexUIModel(
        title: 'Debt Margin',
        barValues: [85, 13, 28, 66],
      ),
      IndexUIModel(
        title: 'C/I Ratio',
        barValues: [21, 49, 10, 93],
      ),
      IndexUIModel(
        title: 'Cost of Risk',
        barValues: [72, 31, 27, 13],
      ),
    ],
    'JAN-2023': const [
      IndexUIModel(
        title: 'Debt Margin',
        barValues: [34, 41, 95, 8],
      ),
      IndexUIModel(
        title: 'C/I Ratio',
        barValues: [76, 15, 68, 50],
      ),
      IndexUIModel(
        title: 'Cost of Risk',
        barValues: [25, 69, 78, 80],
      ),
    ],
    'FEB-2023': const [
      IndexUIModel(
        title: 'Debt Margin',
        barValues: [59, 87, 34, 70],
      ),
      IndexUIModel(
        title: 'C/I Ratio',
        barValues: [33, 57, 29, 30],
      ),
      IndexUIModel(
        title: 'Cost of Risk',
        barValues: [74, 27, 31, 38],
      ),
    ],
  };
}
