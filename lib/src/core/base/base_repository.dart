/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:dartz/dartz.dart';
import '../errors/app_error.dart';

import '../errors/api_exception.dart';
import '../typedefs/typedefs.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions
/// {@endtemplate}
class BaseRepository {
  const BaseRepository();

  ///
  /// [T] is Return type for [EitherResponse]
  ///
  /// [R] is response type from server that is params for [onSuccess] callback
  ///
  /// [onSuccess] callback returns the [T] and accept [R]
  ///
  EitherResponse<T> handleNetworkCall<R, T>({
    required Future<R> call,
    required T Function(R data) onSuccess,
  }) async {
    try {
      final data = await call;
      return right(onSuccess(data));
    } on ApiException catch (e) {
      return left(e.when(
        serverException: (message) => AppError.serverError(message: message),
        unprocessableEntity: (message, errors) =>
            AppError.validationsError(message: message, errors: errors),
        unAuthorized: () => const AppError.unAuthorized(),
        network: () => const AppError.noInternet(),
      ));
    }
  }
}
