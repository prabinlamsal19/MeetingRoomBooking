/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/notification_repository.dart';
import '../source/notification_remote_source.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl extends BaseRepository
    implements NotificationRepository {
  NotificationRepositoryImpl(this._remoteSource);

  final NotificationRemoteSource _remoteSource;
}
