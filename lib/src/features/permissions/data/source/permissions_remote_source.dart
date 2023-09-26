/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';

import 'package:meeting_room/src/core/base/base_remote_source.dart';

abstract class PermissionsRemoteSource {}

@LazySingleton(as: PermissionsRemoteSource)
class PermissionsRemoteSourceImpl extends BaseRemoteSource
    implements PermissionsRemoteSource {
  PermissionsRemoteSourceImpl(Dio super.dio);
}
