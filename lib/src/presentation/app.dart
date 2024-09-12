// ignore_for_file: avoid_redundant_argument_values

import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:benchmark/src/app/config/navigation/observers/main_router_observer.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/app/core/mixins/page_title_mixin.dart';
import 'package:benchmark/src/app/core/theme/theme_data/theme.data.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget with PageTitleMixin {
  App({super.key});

  final _appRouter = AppRouter();

  final _authCubit = getIt<AuthCubit>();
  final _settingsCubit = getIt<SettingsCubit>();

  @override
  Widget build(BuildContext context) {
    return _buildApp(context);
  }

  Widget _buildApp(BuildContext context) {
    return MaterialApp.router(
      title: CommonConstants.appTitle,
      debugShowCheckedModeBanner: kDebugMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.light,
      scrollBehavior: const CupertinoScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
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
        deepLinkBuilder: (link) => _handeDeeplinkBuilder(link, context),
      ),
    );
  }

  Future<DeepLink> _handeDeeplinkBuilder(
    PlatformDeepLink deepLink,
    BuildContext context,
  ) async {
    final isUsedSSO = _settingsCubit.isUsedSSO();
    if (!isUsedSSO) {
      final link = _getInitialPage(deepLink, context);
      return link;
    }

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

    final link = _getInitialPage(deepLink, context);
    return link;
  }

  DeepLink _getInitialPage(
    PlatformDeepLink deepLink,
    BuildContext context,
  ) {
    final HomeCubit homeCubit = getIt<HomeCubit>();
    final initialPage = _settingsCubit.getInitialPage();

    if (deepLink.path.contains(RoutesPaths.analyticsRoutePath)) {
      homeCubit.setAnalyticsTheme(context);
      setPageTitle(routeName: AnalyticsRoute.name);
      return const DeepLink(
        [AnalyticsRoute()],
      );
    } else if (deepLink.path.contains(RoutesPaths.commandCenterPath)) {
      homeCubit.setCommandCenterTheme(context);
      setPageTitle(routeName: CommandCenterRoute.name);
      return const DeepLink(
        [CommandCenterRoute()],
      );
    }

    if (initialPage.isDashboard) {
      return const DeepLink(
        [CommandCenterRoute()],
      );
    }
    if (initialPage.isAnalytics) {
      return const DeepLink(
        [AnalyticsRoute()],
      );
    }
    return deepLink;
  }
}
