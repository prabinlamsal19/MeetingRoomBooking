/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
class ApiException with _$ApiException implements Exception {
  // for server related errors
  const factory ApiException.serverException({
    required String message,
  }) = _ServerException;

  //if status code is 400, 422
  const factory ApiException.unprocessableEntity({
    required String message,
    required Map<String, dynamic> errors,
  }) = _UnprocessableEntity;

  // for status code 401
  const factory ApiException.unAuthorized() = _UnAuthorized;

  // for socket exception from server
  const factory ApiException.network() = _Network;
}
