/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/api_exception.dart';

extension ApiExceptionDioX on DioError {
  ApiException get toException {
    switch (type) {
      //TODO handle exceptions according to server response
      case DioErrorType.badResponse:
        final code = response?.statusCode!;
        if (code == 422) {
          return ApiException.unprocessableEntity(
              message: message ?? 'Server Error',
              errors: response?.data['errors'] ?? {});
        } else if (code == 401) {
          return const ApiException.unAuthorized();
        } else {
          return ApiException.serverException(
              message: message ?? 'Server Error');
        }
      case DioErrorType.unknown:
        if (error is SocketException) {
          return const ApiException.network();
        } else {
          return ApiException.serverException(
              message: message ?? 'Server Error');
        }
      default:
        return ApiException.serverException(
            message: message ?? 'UnExpected Error');
    }
  }
}
