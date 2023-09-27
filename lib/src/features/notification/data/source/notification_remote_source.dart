/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';

import 'package:meeting_room/src/core/base/base_remote_source.dart';

abstract class NotificationRemoteSource {}

@LazySingleton(as: NotificationRemoteSource)
class NotificationRemoteSourceImpl extends BaseRemoteSource
    implements NotificationRemoteSource {
  NotificationRemoteSourceImpl(Dio super.dio);
}
