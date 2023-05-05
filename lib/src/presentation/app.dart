// ignore_for_file: avoid_redundant_argument_values

import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/config/navigation/observers/main_router_observer.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/theme/theme_data/theme.data.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  final _authCubit = getIt<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: CommonConstants.appTitle,
      debugShowCheckedModeBanner: kDebugMode,
      theme: AppTheme.light,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        },
      ),
      routerConfig: _appRouter.config(
        navigatorObservers: () {
          return [MainRouterObserver(context)];
        },
        neglectWhen: (location) {
          return location == RoutesPaths.splashRoutePath;
        },
        deepLinkBuilder: (deepLink) async {
          if (!CommonConstants.isUsedSSO) return deepLink;

          final isAuthorized = _authCubit.isAuthorized();
          final isAccessDenied = _authCubit.isAccessDenied();
          if (!isAuthorized && !isAccessDenied) {
            await _authCubit.authorize();
            return const DeepLink([SplashRoute()]);
          }
          if (!isAuthorized && isAccessDenied) {
            return DeepLink(
              [AccessDeniedRoute(title: 'Access Denied!')],
            );
          }

          return deepLink;
        },
      ),
    );
  }
}
