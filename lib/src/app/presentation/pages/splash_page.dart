/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/routes/app_router.dart';
import 'package:meeting_room/src/features/auth/auth.dart';

import '../blocs/app/app_cubit.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            isFirstTimeLogin: () {
              getIt<AppRouter>().push(const OnboardingRoute());
            },
            authenticated: () {
              getIt<AppRouter>().push(const DashboardRoute());
            },
            unAuthenticated: () {
              getIt<AppRouter>().replace(const LoginRoute());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            initial: (showSplash) {
              if (showSplash) {
                return Container(
                  width: context.width,
                  height: context.height,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text('Splash Screen'),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        },
      ),
    );
  }
}
