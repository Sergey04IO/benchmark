import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/config/navigation/observers/router_observer_mixin.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model/home_ui_model.dart';
import 'package:flutter/material.dart';

class HomeTabsObserver extends AutoRouterObserver with RouterObserverMixin {
  HomeTabsObserver(this.context);
  BuildContext context;

  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();
  final HomeCubit _homeCubit = getIt<HomeCubit>();

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _setPageTitle(route);
    _useHomeUI(route: route);
    if (route.name == AnalyticsRoute.name) {
      _settingsCubit.getDataSource();
    }
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    _setPageTitle(route);
    _useHomeUI(route: route);
    if (route.name != AnalyticsRoute.name) {
      _settingsCubit.initAnalyticsSource();
    }
    super.didInitTabRoute(route, previousRoute);
  }

  void _setPageTitle(TabPageRoute route) {
    final titleBuilder = route.routeInfo.titleBuilder.toString();
    final title = getTitleFromTitleBuilder(titleBuilder);
    setPageTitle(title: title);
  }

  void _useHomeUI({
    required TabPageRoute route,
  }) {
    HomeUIModel? model;
    switch (route.name) {
      case CommandCenterRoute.name:
        model = const HomeUIModel(
          backgroundColor: AppColors.greyC1F,
          appBarBackgroundColor: AppColors.greyE31,
          iconsColor: AppColors.grey396,
        );
        break;
      default:
        _homeCubit.clearHomeUI();
        break;
    }
    if (model == null) return;
    _homeCubit.useHomeUI(model);
  }
}
