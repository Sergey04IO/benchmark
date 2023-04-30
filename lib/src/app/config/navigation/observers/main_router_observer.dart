import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainRouterObserver extends AutoRouterObserver {
  MainRouterObserver(this.context);
  BuildContext context;
  @override
  void didPush(Route route, Route? previousRoute) {
    final title = route.data?.title(context);
    final isSplash = route.data?.path == RoutesPaths.splashRoutePath;
    if (route is DialogRoute || route is ModalBottomSheetRoute) return;
    _setPageTitle(title: isSplash ? null : title);
  }

  void _setPageTitle({String? title}) {
    final label = title != null
        ? '$title - ${CommonConstants.appName}'
        : CommonConstants.appTitle;

    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: label,
        primaryColor: Colors.blue.value, // This line is required
      ),
    );
  }
}
