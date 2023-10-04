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
import 'package:meeting_room/src/core/themes/app_colors.dart';

part 'calendar_cubit.freezed.dart';

part 'calendar_state.dart';

@injectable
class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(const CalendarState.initial());

  void addInitialEvents(BuildContext context) async {
    final events = [
      CalendarEventData(
          title: 'Trainee Meeting Event',
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 10, 5),
          endTime: DateTime(2023, 1, 1, 12, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
      CalendarEventData(
          title: 'Trainee Teaching Event',
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 13, 5),
          endTime: DateTime(2023, 1, 1, 14, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
      CalendarEventData(
          title: 'Trainee Motivation Event',
          date: DateTime(2023, 1, 1),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 17, 5),
          endTime: DateTime(2023, 1, 1, 20, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
    ];
    CalendarControllerProvider.of(context).controller.addAll(events);
    emit(
      const CalendarState.success(),
    );
  }
}
