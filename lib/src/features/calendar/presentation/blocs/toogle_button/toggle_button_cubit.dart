/*
 * Copyright (c) 2022.
 * Author: Prabin Lamsal  
 * Company: EB Pearls
 */

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'toggle_button_cubit.freezed.dart';

part 'toggle_button_state.dart';

@injectable
class ToggleButtonCubit extends Cubit<ToggleButtonState> {
  ToggleButtonCubit() : super(const ToggleButtonState.today());

  void emitWeek() {
    emit(const ToggleButtonState.week());
  }

  void emitToday() {
    emit(const ToggleButtonState.today());
  }
}
