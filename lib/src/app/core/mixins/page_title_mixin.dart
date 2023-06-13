import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/route_names.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin class PageTitleMixin {
  void setPageTitle({String? routeName}) {
    if (routeName == null) return;

    String label = '';

    switch (routeName) {
      case AnalyticsRoute.name:
        label = RouteNames.analyticsRouteName;
      case CommandCenterRoute.name:
        label = RouteNames.commandCenterRouteName;
      default:
        break;
    }
    final title = label.isNotEmpty
        ? '$label - ${CommonConstants.appName}'
        : CommonConstants.appTitle;

    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: title,
        primaryColor: Colors.blue.value, // This line is required
      ),
    );
  }
}
