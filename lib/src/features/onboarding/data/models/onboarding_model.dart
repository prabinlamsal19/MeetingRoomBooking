/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';

part 'onboarding_model.g.dart';

@freezed
class OnboardingModel with _$OnboardingModel {
  const OnboardingModel._();

  const factory OnboardingModel() = _OnboardingModel;

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingModelFromJson(json);
}
