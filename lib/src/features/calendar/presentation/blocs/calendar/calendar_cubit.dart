/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:bloc/bloc.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calendar_cubit.freezed.dart';

part 'calendar_state.dart';

@injectable
class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(const CalendarState.initial());

  void addInitialEvent(BuildContext context) async {
    final event1 = CalendarEventData(
      title: 'Trainee meeting',
      date: DateTime(2023, 1, 1),
      event: 'Trainee meeting Event',
    );
    CalendarControllerProvider.of(context).controller.add(event1);
    emit(
      const CalendarState.success(),
    );
  }
}
