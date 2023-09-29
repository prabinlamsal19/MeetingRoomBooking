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

  void setErrors({required Map<String, dynamic> errors}) {
    Field<String> emailField = state.emailField;
    if (errors.containsKey('email')) {
      emailField = emailField.copyWith(
          value: emailField.value,
          errorMessage: errors['email'],
          isValid: false);
    }
    emit(state.copyWith(emailField: emailField));
  }
}
