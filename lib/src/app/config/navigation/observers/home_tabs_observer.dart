import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/config/navigation/observers/router_observer_mixin.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:flutter/material.dart';

class HomeTabsObserver extends AutoRouterObserver with RouterObserverMixin {
  HomeTabsObserver(this.context);
  BuildContext context;

  final SettingsCubit _settingsCubit = getIt<SettingsCubit>();
  final HomeCubit _homeCubit = getIt<HomeCubit>();

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _setPageTitle(route);
    _homeCubit.clearAppBarTitle();
    if (route.name == AnalyticsRoute.name) {
      _settingsCubit.getDataSource();
    }
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    _setPageTitle(route);
    _homeCubit.clearAppBarTitle();
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
}
