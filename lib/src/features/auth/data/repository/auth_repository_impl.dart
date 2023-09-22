/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';
import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:meeting_room/src/core/typedefs/typedefs.dart';
import 'package:meeting_room/src/features/auth/data/models/login_model.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/auth_repository.dart';
import '../source/auth_remote_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
  AuthRepositoryImpl(this._remoteSource, this._storage);

  final AuthRemoteSource _remoteSource;
  final LocalStorage _storage;

  @override
  EitherResponse<String> login(Map<String, dynamic> values) async {
    return await handleNetworkCall<LoginModel, String>(
      call: _remoteSource.login(values),
      onSuccess: (loginModel) {
        unawaited(_storage.saveToken(
            loginModel.toEntity.accessToken, loginModel.toEntity.refreshToken));
        return 'Success';
      },
    );
  }

  @override
  bool get isLoggedIn => _storage.hasSession;
}
