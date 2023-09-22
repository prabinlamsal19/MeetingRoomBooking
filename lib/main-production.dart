/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';
import 'src/core/envs/production_env.dart';
import 'src/core/helpers/device_info_helper.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  final isBelowAndroid12 = await DeviceInfoHelper.instance.isBelowAndroid12();
  if (isBelowAndroid12) FlutterNativeSplash.preserve(widgetsBinding: binding);
  await bootstrap(
    () => App(),
    env: ProductionEnv(),
  );
}
