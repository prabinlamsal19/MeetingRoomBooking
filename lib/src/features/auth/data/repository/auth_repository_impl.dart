/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:meeting_room/src/core/typedefs/typedefs.dart';
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
  // Future<EitherResponse<String>> loginWithEmail(
  //     Map<String, dynamic> values) async {
  //   final sendEmailReq = GSendEmailReq(
  //     (b) => b..vars.email = "baralbahadur@ebpearls.com",
  //   );

  //   final client = await FerryClientRepository().initClient();

  //   try {
  //     final responseData = await client.request(sendEmailReq).first;

  //     return Right(responseData.data.toString());

  //     // Parse responseData and handle success or failure accordingly
  //     // For example:
  //     // if (responseData.hasErrors) {
  //     //   return Left('Error occurred');
  //     // } else {
  //     //   return Right('Success');
  //     // }
  //   } catch (error) {
  //     // Handle error and return Left with error message
  //     return Left('Error occurred: $error');
  //   }
  // }

  @override
  bool get isLoggedIn => _storage.hasSession;

  @override
  bool get isFirstTimeLogin => true;
}
