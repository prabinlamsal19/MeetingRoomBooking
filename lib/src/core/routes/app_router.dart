/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:auto_route/annotations.dart';
import 'package:meeting_room/src/app/app.dart';
import 'package:meeting_room/src/features/auth/auth.dart';
import 'package:meeting_room/src/features/dashboard/dashboard.dart';

import 'app_routes.dart';

export 'app_router.gr.dart';
export 'app_routes.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: SplashPage, path: AppRoutes.splash, initial: true),
    AutoRoute<void>(page: LoginPage, path: AppRoutes.login),
    AutoRoute<void>(page: DashboardPage, path: AppRoutes.dashboard),
  ],
)
class $AppRouter {}
