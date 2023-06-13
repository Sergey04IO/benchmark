import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/core/enums/initial_page.dart';
import 'package:benchmark/src/app/core/mixins/page_title_mixin.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:benchmark/src/presentation/widgets/navigation/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class CommonScaffold extends StatefulWidget {
  const CommonScaffold({
    super.key,
    required this.child,
    this.title,
    this.backgroundColor = AppColors.grey2F3,
    this.iconColor = AppColors.primaryColor,
    this.appBarColor = AppColors.grey3F3,
  });

  final Widget? title;
  final Widget child;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? appBarColor;

  @override
  State<CommonScaffold> createState() => _CommonScaffoldState();
}

class _CommonScaffoldState extends State<CommonScaffold> with PageTitleMixin {
  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setInitialPageTitle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor ?? AppColors.grey2F3,
      appBar: AppBar(
        backgroundColor: widget.appBarColor ?? AppColors.grey3F3,
        titleSpacing: 0,
        title: widget.title,
        iconTheme: IconThemeData(
          color: widget.iconColor ?? AppColors.primaryColor,
        ),
      ),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      body: widget.child,
    );
  }

  void _setInitialPageTitle() {
    final initialPage = _settingsCubit.getInitialPage();
    String? routeName;
    switch (initialPage) {
      case InitialPage.analytics:
        routeName = AnalyticsRoute.name;
      case InitialPage.dashboard:
        routeName = CommandCenterRoute.name;
      default:
        break;
    }
    setPageTitle(routeName: routeName);
  }
}
