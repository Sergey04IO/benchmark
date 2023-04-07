enum ValueBigger {
  first,
  second,
  equal;

  bool get isFirst => this == ValueBigger.first;

  bool get isSecond => this == ValueBigger.second;

  bool get isEqual => this == ValueBigger.equal;

  bool get isNotEqual => this != ValueBigger.equal;
}
