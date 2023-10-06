/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:calendar_view/calendar_view.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';

//make this class abstract and create its impl and inject it through get_it

abstract class CalendarRepository {
  List<CalendarEventData<String>> getEvents();
}
