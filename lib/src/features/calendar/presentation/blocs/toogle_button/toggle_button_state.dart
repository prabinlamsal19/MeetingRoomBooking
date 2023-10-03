/*
 * Copyright (c) 2022.
 * Author: Prabin Lamsal
 * Company: EB Pearls
 */

part of 'toggle_button_cubit.dart';

@freezed
class ToggleButtonState with _$ToggleButtonState {
  const factory ToggleButtonState.week() = _Week;
  const factory ToggleButtonState.today() = _Today;
}
