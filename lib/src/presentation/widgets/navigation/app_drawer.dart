import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:benchmark/src/presentation/widgets/dialogs/config_dialog.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    super.key,
  });

  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          _buildItems(context),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return DrawerHeader(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          Assets.images.stock.path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Configuration'),
          onTap: () {
            Navigator.of(context).pop();
            _openPopUpConfig(context);
          },
        ),
      ],
    );
  }

  void _openPopUpConfig(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ConfigDialog(
          onConfigurationSaved: _onConfigurationSaved,
          storedFile: _settingsCubit.fileModel,
          storedOption: _mapDataSourceIntoIndex(),
        );
      },
    );
  }

  int? _mapDataSourceIntoIndex() {
    final source = _settingsCubit.configDataSource;
    if (source == null) return null;
    if (source.isGsheets) {
      return 0;
    } else {
      return 1;
    }
  }

  Future<void> _onConfigurationSaved(
    ConfigDataSource dataSource,
    ConfigExcelFileModel? model,
  ) async {
    // await Future.delayed(Duration(milliseconds: 100));
    await _settingsCubit.saveDataSource(
      dataSource: dataSource,
      model: model,
    );
  }
}
