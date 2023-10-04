/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meeting_room/localization/generated/l10n.dart';
import 'package:meeting_room/src/app/presentation/blocs/app/app_cubit.dart';
import 'package:meeting_room/src/app/presentation/blocs/locale/locale_cubit.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/core/helpers/device_info_helper.dart';
import 'package:meeting_room/src/core/routes/app_router.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/calendar/presentation/blocs/toogle_button/toggle_button_cubit.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    final events = [
      CalendarEventData(
          title: 'Trainee Meeting Event', //title is made equivalent to speaker
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 10, 5),
          endTime: DateTime(2023, 1, 1, 12, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
      CalendarEventData(
          title: 'Trainee Teaching Event', //title is made equivalent to speaker
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 13, 5),
          endTime: DateTime(2023, 1, 1, 14, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
      CalendarEventData(
          title:
              'Trainee Motivation Event', //title is made equivalent to speaker
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 17, 5),
          endTime: DateTime(2023, 1, 1, 20, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (_) =>
              getIt<AppCubit>(param1: DeviceInfoHelper.instance)..change(),
        ),
        BlocProvider<LocaleCubit>(
          create: (_) => LocaleCubit(),
        ),
        BlocProvider<ToggleButtonCubit>(
          create: (_) => ToggleButtonCubit(),
        )
      ],
      child: BlocListener<AppCubit, AppState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              isFirstTimeLogin: () =>
                  _appRouter.replaceAll([const OnboardingRoute()]));
        },
        child: BlocBuilder<LocaleCubit, LocaleState>(
          builder: (context, state) {
            return AdaptiveSizer(
              builder: (context) {
                return CalendarControllerProvider(
                  controller: EventController()..addAll(events),
                  child: MaterialApp.router(
                    restorationScopeId: 'root',
                    debugShowCheckedModeBanner: false,
                    useInheritedMediaQuery: true, 
                    routeInformationParser: _appRouter.defaultRouteParser(),
                    routerDelegate: _appRouter.delegate(),
                    localizationsDelegates: [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: state.locale,
                    theme: AppTheme.lightTheme,
                    supportedLocales:
                        AppLocalizations.delegate.supportedLocales,
                    builder: (BuildContext context, Widget? child) {
                      ErrorWidget.builder = (FlutterErrorDetails details) =>
                          AppErrorWidget(details: details);
                      return child!;
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
