import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/presentation/pages/access_denied_page.dart';
import 'package:benchmark/src/presentation/pages/home/home_page.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/analytics/page/analytics_page.dart';
import 'package:benchmark/src/presentation/pages/home/subpages/command_center/page/command_center_page.dart';
import 'package:benchmark/src/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              path: RoutesPaths.analyticsRoutePath.substring(1),
              page: AnalyticsRoute.page,
              title: (context, data) {
                return 'Analytics';
              },
              initial: true,
            ),
            AutoRoute(
              path: RoutesPaths.commandCenterPath.substring(1),
              page: CommandCenterRoute.page,
              title: (context, data) {
                return 'Command Center';
              },
            ),
          ],
        ),
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
      ];
}
