import 'package:auto_route/auto_route.dart';
import 'package:meeting_room/src/features/auth/auth.dart';
import 'app_router.dart';

export 'app_router.gr.dart';
export 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: AppRoutes.splash, initial: true),
    AutoRoute(page: LoginRoute.page, path: AppRoutes.login),
    AutoRoute(page: TermsRoute.page, path: AppRoutes.terms),
  ];
}

/* 
for syntax information 

 AutoRoute(page: HomePageRoute.page, path: "/home", children: [
      AutoRoute(
          page: TransactionPageRoute.page,
          path: 'transactions',
          children: [
            AutoRoute(page: NotesScreenRoute.page, path: 'notes', children: [
              AutoRoute(page: NoteScreenRoute.page, path: 'notescreen')
            ]),
          ]),
*/
