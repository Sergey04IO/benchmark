import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/observers/router_observer_mixin.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:flutter/material.dart';

class MainRouterObserver extends AutoRouterObserver with RouterObserverMixin {
  MainRouterObserver(this.context);
  BuildContext context;
  @override
  void didPush(Route route, Route? previousRoute) {
    final title = route.data?.title(context);
    final isSplash = route.data?.path == RoutesPaths.splashRoutePath;
    if (route is DialogRoute || route is ModalBottomSheetRoute) return;
    setPageTitle(title: isSplash ? null : title);
  }
}
