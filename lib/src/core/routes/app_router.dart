import 'package:auto_route/auto_route.dart';
import 'package:meeting_room/src/app/app.dart';
import 'package:meeting_room/src/features/auth/auth.dart';
import 'package:meeting_room/src/features/dashboard/dashboard.dart';

import 'app_router.dart';
import 'app_routes.dart';

export 'app_router.gr.dart';
export 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: AppRoutes.splash, initial: true),
    AutoRoute(page: LoginRoute.page, path: AppRoutes.login),
    AutoRoute(page: DashboardRoute.page, path: AppRoutes.dashboard),
  ];
}
