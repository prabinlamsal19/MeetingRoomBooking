/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:dio/dio.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';

import 'token_service.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptorsWrapper {
  AuthInterceptor(this._storage, this._tokenService);

  final LocalStorage _storage;
  final TokenService _tokenService;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response!.statusCode == 403 || err.response!.statusCode == 401) {
      final options = err.requestOptions;
      final accessToken = await _tokenService.refreshToken();
      if (accessToken == null || accessToken.isEmpty) {
        return handler.reject(err);
      } else {
        options.headers.addAll({'Authorization': 'Bearer $accessToken'});
        try {
          final _res = await _tokenService.fetch(options);
          return handler.resolve(_res);
        } on DioError catch (e) {
          handler.next(e);
          return;
        }
      }
    }
    handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_storage.hasSession) {
      // final token = _storage.getSession();
      options.headers
          .addAll({'Authorization': 'Bearer ${_storage.accessToken}'});
    }
    handler.next(options);
  }
}
