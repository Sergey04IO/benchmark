import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/app/core/enums/config_data_source.dart';
import 'package:benchmark/src/app/core/generated/assets/assets.gen.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:benchmark/src/presentation/models/helper_models/config_file/config_excel_file_model.dart';
import 'package:benchmark/src/presentation/widgets/dialogs/config_dialog.dart';
import 'package:benchmark/src/presentation/widgets/navigation/drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    super.key,
  });

  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();

  final int analyticsPageIndex = 0;
  final int commandCenterPageIndex = 1;

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
        DrawerItem(
          leading: const Icon(Icons.home),
          title: const Text('Analytics'),
          onTap: () => _openAnalytics(context),
        ),
        DrawerItem(
          leading: const Icon(Icons.dashboard),
          title: const Text('Command Center'),
          onTap: () => _openCommandCenter(context),
        ),
        if (_showConfig(context)) const Divider(),
        if (_showConfig(context))
          DrawerItem(
            leading: const Icon(Icons.settings),
            title: const Text('Configuration'),
            onTap: () => _openPopUpConfig(context),
          ),
      ],
    );
  }

  void _openAnalytics(BuildContext context) {
    _openPage(context, index: 0);
  }

  void _openCommandCenter(BuildContext context) {
    _openPage(context, index: 1);
  }

  void _openPage(
    BuildContext context, {
    required int index,
  }) {
    final isOpened = AutoTabsRouter.of(context).activeIndex == index;
    if (isOpened) return;
    AutoTabsRouter.of(context).setActiveIndex(index);
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
    await _settingsCubit.saveDataSource(
      dataSource: dataSource,
      model: model,
    );
  }

  bool _showConfig(BuildContext context) {
    final currentPath = AutoTabsRouter.of(context).currentPath;
    final isShown = currentPath == RoutesPaths.analyticsRoutePath;
    return isShown;
  }
}
