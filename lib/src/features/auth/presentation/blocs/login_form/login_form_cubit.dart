/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:bloc/bloc.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/form/field.dart';
import 'package:meeting_room/src/core/form/form_mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_form_cubit.freezed.dart';
part 'login_form_state.dart';

@injectable
class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit()
      : super(
          const LoginFormState(
            emailField: const Field<String>(value: ''),
            passwordField: const Field<String>(value: '', obscureText: true),
          ),
        );

  void onEmailChange(String value) {
    late Field<String> _emailField;
    if (value.isNotEmpty && value.isEmail)
      _emailField = state.emailField
          .copyWith(value: value, errorMessage: '', isValid: true);
    else
      _emailField = state.emailField.copyWith(
          value: value, errorMessage: 'Enter valid email.', isValid: false);
    emit(state.copyWith(emailField: _emailField));
  }

  void onPasswordChange(String value) {
    late Field<String> _passwordField;
    if (value.isNotEmpty && value.length > 8)
      _passwordField = state.passwordField
          .copyWith(value: value, isValid: true, errorMessage: '');
    else
      _passwordField = state.passwordField.copyWith(
          value: value, errorMessage: 'Enter valid password', isValid: false);
    emit(state.copyWith(passwordField: _passwordField));
  }

  void togglePassword() {
    final passwordField = state.passwordField;
    final currentToggleState = passwordField.obscureText;
    final toggledField = state.passwordField.copyWith(
      value: passwordField.value,
      errorMessage: passwordField.errorMessage,
      obscureText: !currentToggleState,
    );
    emit(state.copyWith(passwordField: toggledField));
  }

  void setErrors({required Map<String, dynamic> errors}) {
    Field<String> emailField = state.emailField;
    Field<String> passwordField = state.passwordField;
    if (errors.containsKey('email')) {
      emailField = emailField.copyWith(
          value: emailField.value,
          errorMessage: errors['email'],
          isValid: false);
    }
    if (errors.containsKey('password')) {
      passwordField = passwordField.copyWith(
          value: passwordField.value,
          errorMessage: errors['password'],
          isValid: false);
    }
    emit(state.copyWith(emailField: emailField, passwordField: passwordField));
  }
}
