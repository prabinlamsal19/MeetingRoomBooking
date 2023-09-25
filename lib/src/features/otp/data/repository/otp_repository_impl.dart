/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/otp_repository.dart';
import '../source/otp_remote_source.dart';

@LazySingleton(as: OtpRepository)
class OtpRepositoryImpl extends BaseRepository implements OtpRepository {
  OtpRepositoryImpl(this._remoteSource);

  final OtpRemoteSource _remoteSource;
}
