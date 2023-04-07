class ModelHelper {
  static List<num> getNumsListFromString(
    String? values, {
    String delimiter = ';',
  }) {
    String? str = values;
    if (str == null) return [];
    str = _removeEndingSymbols(str);
    final splitted = str.split(delimiter);
    final nums = splitted.map((value) {
      final number = num.tryParse(value) ?? 0;
      return number;
    }).toList();
    return nums;
  }

  static String _removeEndingSymbols(String str) {
    int? index;
    for (int i = 1; i < str.length; i++) {
      final isLastCharNotDigit = int.tryParse(str[str.length - i]) == null;
      if (isLastCharNotDigit) {
        index = i;
      } else {
        break;
      }
    }
    if (index == null) return str;
    return str.substring(0, str.length - index);
  }
}
