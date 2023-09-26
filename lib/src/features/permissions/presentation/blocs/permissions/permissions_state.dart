/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'permissions_cubit.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.initial() = _Initial;
  const factory PermissionsState.loading() = _Loading;
  const factory PermissionsState.error({required String message}) = _Error;
  const factory PermissionsState.success() = _Success;
}
