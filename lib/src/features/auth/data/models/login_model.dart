/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_local_storage/hive_local_storage.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  const factory LoginModel({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Session get toEntity => Session()
    ..accessToken = accessToken
    ..refreshToken = refreshToken;
}
