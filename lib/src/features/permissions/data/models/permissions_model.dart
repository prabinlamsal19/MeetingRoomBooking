/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions_model.freezed.dart';

part 'permissions_model.g.dart';

@freezed
class PermissionsModel with _$PermissionsModel {
  const PermissionsModel._();

  const factory PermissionsModel() = _PermissionsModel;

  factory PermissionsModel.fromJson(Map<String, dynamic> json) =>
      _$PermissionsModelFromJson(json);
}
