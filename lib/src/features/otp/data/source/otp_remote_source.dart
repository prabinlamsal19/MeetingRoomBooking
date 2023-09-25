/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';

import 'package:meeting_room/src/core/base/base_remote_source.dart';

abstract class OtpRemoteSource {}

@LazySingleton(as: OtpRemoteSource)
class OtpRemoteSourceImpl extends BaseRemoteSource implements OtpRemoteSource {
  OtpRemoteSourceImpl(Dio super.dio);
}
