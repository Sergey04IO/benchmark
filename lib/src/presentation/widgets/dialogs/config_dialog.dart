import 'package:benchmark/src/app/core/constants/app_colors.dart';
import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/enums/pick_file_type.dart';
import 'package:benchmark/src/presentation/helper/file_picker_helper.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:flutter/material.dart';

class ConfigDialog extends StatefulWidget {
  const ConfigDialog({
    super.key,
    this.onConfigurationSaved,
    this.storedOption,
    this.storedFile,
  });

  final int? storedOption;
  final ConfigExcelFileModel? storedFile;
  final Function(
    ConfigDataSource dataSource,
    ConfigExcelFileModel? model,
  )? onConfigurationSaved;

  @override
  State<ConfigDialog> createState() => _ConfigDialogState();
}

class _ConfigDialogState extends State<ConfigDialog> {
  final _gsheetsRadioValue = 0;
  final _excelRadioValue = 1;

  late int _selectedValue;
  // String? _fileName;
  // ex.Excel? _excel;

  ConfigExcelFileModel? _dataSourceModel = ConfigExcelFileModel();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _dataSourceModel = _dataSourceModel?.copyWith(
      excel: widget.storedFile?.excel,
      name: widget.storedFile?.name,
      extension: widget.storedFile?.extension,
      size: widget.storedFile?.size,
    );
    _selectedValue = widget.storedOption ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: _getDialogWidth(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTitle(),
        const SizedBox(height: 20),
        _buildRadioButtons(),
        SizedBox(height: _selectedValue == 1 ? 10 : 20),
        if (_selectedValue == 1) _buildUploadFileSection(),
        if (_selectedValue == 1) const SizedBox(height: 20),
        _buildSaveButton(),
      ],
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Configuration',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        color: AppColors.grey948,
      ),
    );
  }

  Widget _buildRadioButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRadio(
          value: _gsheetsRadioValue,
          text: 'Use Google Sheets',
        ),
        _buildRadio(
          value: _excelRadioValue,
          text: 'Use local Excel file',
        ),
      ],
    );
  }

  Widget _buildRadio({
    required int value,
    String? text,
  }) {
    return RadioListTile<int>(
      value: value,
      groupValue: _selectedValue,
      contentPadding: EdgeInsets.zero,
      activeColor: AppColors.primaryColor,
      title: Text(
        text ?? '',
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.grey948,
        ),
      ),
      onChanged: (changed) {
        setState(() {
          _selectedValue = value;
        });
      },
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor.withOpacity(0.2),
          foregroundColor: AppColors.primaryColor,
          disabledBackgroundColor: AppColors.grey2F3,
          shape: const StadiumBorder(),
        ),
        onPressed: _isSaveButtonDisabled() ? null : _onTapSave,
        child: const Text('Save'),
      ),
    );
  }

  Widget _buildUploadFileSection() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _buildFileNameContainer(),
          ),
          const SizedBox(width: 10),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.grey0A4.withOpacity(0.5),
              foregroundColor: AppColors.grey948,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3))),
            ),
            onPressed: _onTapImportFile,
            child: const Text('Import file'),
          ),
        ],
      ),
    );
  }

  Widget _buildFileNameContainer() {
    final name = _dataSourceModel?.name;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey948,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            name ?? 'File name',
            style: TextStyle(
              color: AppColors.grey948.withOpacity(
                name != null ? 1 : 0.4,
              ),
            ),
            softWrap: false,
            maxLines: 1,
          ),
        ),
      ),
    );
  }

  Future<void> _onTapImportFile() async {
    _isLoading = true;
    final model = await FilePickerHelper.pickFile(type: PickFileType.excel);
    _dataSourceModel = _dataSourceModel?.copyWith(
      excel: model?.file,
      name: model?.pickedFile?.name,
      extension: model?.pickedFile?.extension,
      size: model?.pickedFile?.size,
    );
    _isLoading = false;
    setState(() {});
  }

  Future<void> _onTapSave() async {
    if (_isLoading) return;
    if (_selectedValue == _gsheetsRadioValue) {
      _dataSourceModel = null;
    }
    Navigator.of(context).pop();
    widget.onConfigurationSaved?.call(
      _mapSelectedIndexToDataSource(),
      _dataSourceModel,
    );
  }

  bool _isSaveButtonDisabled() {
    final isDisabled =
        _selectedValue == _excelRadioValue && _dataSourceModel?.excel == null;
    return isDisabled;
  }

  ConfigDataSource _mapSelectedIndexToDataSource() {
    if (_selectedValue == _gsheetsRadioValue) {
      return ConfigDataSource.gsheets;
    } else {
      return ConfigDataSource.excel;
    }
  }

  double _getDialogWidth() {
    final mediaWidth = MediaQuery.of(context).size.width;
    final width = mediaWidth < 600
        ? mediaWidth / 1.5
        : mediaWidth < 700
            ? mediaWidth / 1.75
            : mediaWidth < 800
                ? mediaWidth / 1.85
                : mediaWidth < 1000
                    ? mediaWidth / 2
                    : mediaWidth < 1500
                        ? mediaWidth / 3
                        : mediaWidth / 4;
    return width;
  }
}
