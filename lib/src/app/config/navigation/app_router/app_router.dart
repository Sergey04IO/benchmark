import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/routes_data/routes_paths.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/presentation/pages/home_page.dart';
import 'package:benchmark/src/presentation/pages/login_page.dart';
import 'package:benchmark/src/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RoutesPaths.homeRoutePath,
          page: HomeRoute.page,
          title: (context, data) {
            return 'Home';
          },
          initial: true,
        ),
        AutoRoute(
          path: RoutesPaths.loginRoutePath,
          page: LoginRoute.page,
          title: (context, data) {
            return 'Login';
          },
        ),
        AutoRoute(
          path: RoutesPaths.splashRoutePath,
          page: SplashRoute.page,
        ),
      ];
}
