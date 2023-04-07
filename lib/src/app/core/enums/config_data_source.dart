enum ConfigDataSource {
  gsheets,
  excel;

  bool get isGsheets => this == ConfigDataSource.gsheets;

  bool get isExcel => this == ConfigDataSource.excel;
}
