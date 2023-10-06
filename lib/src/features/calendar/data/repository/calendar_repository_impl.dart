/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:calendar_view/src/calendar_event_data.dart';
import 'package:meeting_room/src/core/base/base_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';

import '../../domain/repository/calendar_repository.dart';
import '../source/calendar_remote_source.dart';

@LazySingleton(as: CalendarRepository)
class CalendarRepositoryImpl extends BaseRepository
    implements CalendarRepository {
  // CalendarRepositoryImpl(this._remoteSource);
  CalendarRepositoryImpl();

  @override
  List<CalendarEventData<String>> getEvents() {
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
      CalendarEventData(
          title: 'Trainee Next Day Event',
          date: DateTime(2023, 1, 2),
          event: 'Hello',
          startTime: DateTime(2023, 1, 1, 17, 5),
          endTime: DateTime(2023, 1, 1, 20, 0),
          description: 'Ground Floor',
          color: AppColors.primary),
    ];
    return events;
  }

  // final CalendarRemoteSource _remoteSource;
}
