/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';

part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const DashboardModel._();

  const factory DashboardModel() = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}
