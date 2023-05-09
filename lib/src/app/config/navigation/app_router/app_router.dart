import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/presentation/pages/access_denied_page.dart';
import 'package:benchmark/src/presentation/pages/dashboards/command_center/command_center_dashboard.dart';
import 'package:benchmark/src/presentation/pages/home_page.dart';
import 'package:benchmark/src/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RoutesPaths.splashRoutePath,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: RoutesPaths.accessDeniedRoutePath,
          page: AccessDeniedRoute.page,
          title: (context, data) {
            return 'Access Denied';
          },
        ),
        AutoRoute(
          path: RoutesPaths.homeRoutePath,
          page: HomeRoute.page,
          title: (context, data) {
            return 'Home';
          },
          initial: true,
        ),
        AutoRoute(
          path: RoutesPaths.commandCenterDashboard,
          page: CommandCenterDashboardRoute.page,
          title: (context, data) {
            return 'Command Center Dashboard';
          },
        ),
      ];
}
