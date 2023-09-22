/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:bloc_test/bloc_test.dart';
import 'package:meeting_room/src/app/presentation/blocs/app/app_cubit.dart';
import 'package:meeting_room/src/core/helpers/device_info_helper.dart';
import 'package:meeting_room/src/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockDeviceInfoHelper extends Mock implements DeviceInfoHelper {}

void main() async {
  late MockAuthRepository _repository;
  late MockDeviceInfoHelper _helper;

  setUpAll(() {
    _repository = MockAuthRepository();
    _helper = MockDeviceInfoHelper();
  });

  blocTest<AppCubit, AppState>(
    'emits [AppState.unAuthenticated()] when there is no session saved of user',
    setUp: () {
      when(() => _helper.isBelowAndroid12()).thenAnswer((_) async => false);
      when(() => _repository.isLoggedIn).thenAnswer((invocation) => false);
    },
    build: () => AppCubit(_repository, _helper),
    act: (bloc) => bloc.change(),
    expect: () => [
      const AppState.initial(showSplash: true),
      const AppState.unAuthenticated(),
    ],
    verify: (_) => verify(() => _repository.isLoggedIn).called(1),
  );

  blocTest<AppCubit, AppState>(
    'emits [AppState.authenticated()] when there is  session saved of user',
    setUp: () {
      when(() => _helper.isBelowAndroid12()).thenAnswer((_) async => false);
      when(() => _repository.isLoggedIn).thenAnswer((invocation) => true);
    },
    build: () => AppCubit(_repository, _helper),
    act: (bloc) => bloc.change(),
    expect: () => [
      const AppState.initial(showSplash: true),
      const AppState.authenticated(),
    ],
    verify: (_) => verify(() => _repository.isLoggedIn).called(1),
  );
}
