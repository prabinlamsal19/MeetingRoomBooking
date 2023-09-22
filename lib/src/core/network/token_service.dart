/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';

import '../base/env.dart';

@lazySingleton
class TokenService {
  TokenService(this._storage) {
    _dio = Dio(BaseOptions(
      baseUrl: Env().baseUrl,
      receiveTimeout: const Duration(seconds: 60),
      connectTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json,
      headers: <String, dynamic>{
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ));
  }

  final LocalStorage _storage;
  late Dio _dio;

  Future<Response<dynamic>> fetch(RequestOptions options) =>
      _dio.fetch(options);

  Future<String?> refreshToken() async {
    //TODO: implement your own logics for refresh token
    return null;
  }
}
