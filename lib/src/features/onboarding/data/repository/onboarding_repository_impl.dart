/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/onboarding_repository.dart';
import '../source/onboarding_remote_source.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl extends BaseRepository
    implements OnboardingRepository {
  OnboardingRepositoryImpl(this._remoteSource);

  final OnboardingRemoteSource _remoteSource;
}
