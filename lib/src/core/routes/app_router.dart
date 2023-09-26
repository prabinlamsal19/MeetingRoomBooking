import 'package:auto_route/auto_route.dart';
import 'app_router.dart';

export 'app_router.gr.dart';
export 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: AppRoutes.splash, initial: true),
    AutoRoute(page: LoginRoute.page, path: AppRoutes.login),
  ];
}
