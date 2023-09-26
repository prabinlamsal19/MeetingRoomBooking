/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/routes/app_router.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/auth/auth.dart';
import 'package:meeting_room/src/features/otp/otp.dart';

import '../blocs/login/login_cubit.dart';
import '../blocs/login_form/login_form_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormCubit>(create: (_) => getIt<LoginFormCubit>()),
        BlocProvider<LoginCubit>(create: (_) => getIt<LoginCubit>()),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.r),
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                error: (message) {
                  context.showSnackbar(
                      title: l10n.login, message: message, error: true);
                  // getIt<AppRouter>().replaceAll([const DashboardRoute()]);
                },
                validationError: (message, errors) {
                  if (errors.isEmpty) {
                    context.showSnackbar(
                        title: l10n.login, message: message, error: true);
                  } else {
                    context.read<LoginFormCubit>().setErrors(errors: errors);
                  }
                  // getIt<AppRouter>().replaceAll([const DashboardRoute()]);
                },
                success: (message) {
                  context.showSnackbar(
                      title: l10n.login, message: message, error: true);
                  // getIt<AppRouter>().replaceAll([const DashboardRoute()]);
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                150.verticalSpace,
                Text(
                  l10n.loginPageText,
                  textAlign: TextAlign.center,
                  style: AppStyles.text12Px.black,
                ),
                35.verticalSpace,
                const _EmailField(),
                20.verticalSpace,
                BlocBuilder<LoginFormCubit, LoginFormState>(
                  builder: (context, state) {
                    final loading = context.select<LoginCubit, bool>((value) =>
                        value.state.maybeWhen(
                            orElse: () => false, loading: () => true));
                    return CustomButton(
                      onPressed: () {
                        context.read<LoginCubit>().login(state.values);
                      },
                      isDisabled: !state.isValid,
                      loading: loading,
                      label: l10n.login,
                      fullWidth: true,
                    );
                  },
                ),
                245.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.loginAgree,
                      textAlign: TextAlign.center,
                      style: AppStyles.text12Px.black,
                    ),
                    5.horizontalSpace,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => OtpPage()));
                      },
                      child: Text(
                        l10n.termsOfService,
                        textAlign: TextAlign.center,
                        style: AppStyles.text12PxSemiBold.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.and,
                      textAlign: TextAlign.center,
                      style: AppStyles.text12Px.black,
                    ),
                    5.horizontalSpace,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TermsPage()));
                      },
                      child: Text(
                        l10n.privacyPolicy,
                        textAlign: TextAlign.center,
                        style: AppStyles.text12PxSemiBold.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormCubit, LoginFormState>(
      buildWhen: (previous, current) =>
          current.emailField != previous.emailField,
      builder: (context, state) {
        return TextFormField(
          style: AppStyles.text14Px.black,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (value) =>
              context.read<LoginFormCubit>().onEmailChange(value),
          decoration: InputDecoration(
            errorText: state.emailField.hasError
                ? state.emailField.errorMessage
                : null,
            label: Text(
              l10n.emailHint,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }
}
