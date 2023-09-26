/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_model.freezed.dart';

part 'otp_model.g.dart';

@freezed
class OtpModel with _$OtpModel {
  const OtpModel._();

  const factory OtpModel() = _OtpModel;

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
