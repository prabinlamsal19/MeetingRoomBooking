/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/dashboard_repository.dart';
import '../source/dashboard_remote_source.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl extends BaseRepository
    implements DashboardRepository {
  DashboardRepositoryImpl(this._remoteSource);

  final DashboardRemoteSource _remoteSource;
}
