/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/calendar_repository.dart';
import '../source/calendar_remote_source.dart';

@LazySingleton(as: CalendarRepository)
class CalendarRepositoryImpl extends BaseRepository
    implements CalendarRepository {
  CalendarRepositoryImpl(this._remoteSource);

  final CalendarRemoteSource _remoteSource;
}
