/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repository/auth_repository.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository) : super(const LoginState.initial());

  final AuthRepository _repository;

  void login(Map<String, dynamic> values) async {
    emit(const LoginState.loading());
    // final response = await _repository.loginWithEmail(values);
    // emit(response.fold(
    //   (error) => error.when(
    //     serverError: (message) => LoginState.error(message: message),
    //     validationsError: (message, errors) =>
    //         LoginState.validationError(message: message, errors: errors),
    //     noInternet: () =>
    //         const LoginState.error(message: 'No Internet Connection'),
    //     unAuthorized: () => const LoginState.error(message: 'UnAuthorized'),
    //   ),
    //   (message) => LoginState.success(message: message),
    // ));
  }
}
