/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;

  const factory DashboardState.loading() = _Loading;

  const factory DashboardState.success({required List<FloorModel> floorList}) =
      _Success;

  const factory DashboardState.error() = _Error;
}
