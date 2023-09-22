/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:bloc/bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/helpers/device_info_helper.dart';
import 'package:meeting_room/src/features/auth/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(this._repository, @factoryParam this.helper)
      : super(const AppState.initial());

  final AuthRepository _repository;
  final DeviceInfoHelper helper;

  void change() async {
    final isBelowAndroid12 = await helper.isBelowAndroid12();
    emit(AppState.initial(showSplash: !isBelowAndroid12));
    await 2.delayedSeconds;
    if (_repository.isLoggedIn) {
      emit(const AppState.authenticated());
    } else {
      emit(const AppState.unAuthenticated());
    }
    if (await helper.isBelowAndroid12()) FlutterNativeSplash.remove();
  }
}
