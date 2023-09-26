/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/permissions_repository.dart';
import '../source/permissions_remote_source.dart';

@LazySingleton(as: PermissionsRepository)
class PermissionsRepositoryImpl extends BaseRepository
    implements PermissionsRepository {
  PermissionsRepositoryImpl(this._remoteSource);

  final PermissionsRemoteSource _remoteSource;
}
