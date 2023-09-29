import 'package:auto_route/auto_route.dart';
import 'package:meeting_room/src/app/presentation/pages/splash_page.dart';
import 'app_router.dart';

export 'app_router.gr.dart';
export 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: OnboardingRoute.page, initial: true, path: AppRoutes.ob),
    AutoRoute(page: OtpRoute.page, path: AppRoutes.otp),
    AutoRoute(page: LoginRoute.page, path: AppRoutes.login),
    AutoRoute(page: TermsRoute.page, path: AppRoutes.terms),
    AutoRoute(page: PermissionsRoute.page, path: AppRoutes.permission),
    AutoRoute(page: DashboardRoute.page, path: AppRoutes.dashboard),
    AutoRoute(page: SettingsRoute.page, path: AppRoutes.setting),
    AutoRoute(page: CalendarRoute.page, path: AppRoutes.calendar),
    AutoRoute(page: SettingsRoute.page, path: AppRoutes.setting),
    AutoRoute(page: NotificationRoute.page, path: AppRoutes.notification),
    AutoRoute(page: SplashRoute.page, path: AppRoutes.splash),
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
