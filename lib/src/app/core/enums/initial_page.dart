import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:flutter/material.dart';

enum InitialPage {
  analytics,
  dashboard;

  bool get isAnalytics => this == InitialPage.analytics;
  bool get isDashboard => this == InitialPage.dashboard;

  bool isAnalyticsPath(BuildContext context) {
    final currentPath = AutoTabsRouter.of(context).currentPath;
    return currentPath == RoutesPaths.analyticsRoutePath;
  }

  bool isDashboardPath(BuildContext context) {
    final currentPath = AutoTabsRouter.of(context).currentPath;
    return currentPath == RoutesPaths.commandCenterPath;
  }
}
