enum PickFileType {
  excel,
  any;

  bool get isAny => this == PickFileType.any;
  bool get isExcel => this == PickFileType.excel;
}
