/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/core/base/env.dart';
import 'src/core/di/injector.dart';
import 'src/core/logging/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    logger.d('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  required EnvVars env,
}) async {
  Bloc.observer = AppBlocObserver();
  GoogleFonts.config.allowRuntimeFetching = false;
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString(), details.exception, details.stack);
  };
  await Env().loadVars(env);
  _addFontsLicenses();
  await configureInjection();
  await runZonedGuarded(
    () async => runApp(await builder()),
    (Object error, StackTrace stackTrace) =>
        logger.e(error.toString(), error, stackTrace),
  );
}

void _addFontsLicenses() {
  LicenseRegistry.addLicense(() async* {
    final robotoLicense =
        await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
  });
}
