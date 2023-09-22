/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:dio/dio.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';

import '../routes/app_router.dart';
import '../base/env.dart';
import '../logging/logger.dart';
import '../network/auth_interceptor.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();

  @singleton
  @preResolve
  Future<LocalStorage> get storage async => await LocalStorage.getInstance();

  @lazySingleton
  Dio dio(AuthInterceptor authInterceptor) => Dio(BaseOptions(
        baseUrl: Env().baseUrl,
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ))
        ..interceptors.addAll([
          LogInterceptor(logPrint: logger.d),
          authInterceptor,
        ]);
}
