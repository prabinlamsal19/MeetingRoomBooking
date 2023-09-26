/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/features/calendar/presentation/helpers/calender_helper.dart';

class CalendarPage extends StatelessWidget {
  CalendarPage({super.key});

  final event1 = CalendarEventData(
    title: 'Trainee meeting',
    date: DateTime(2021, 8, 10),
    event: 'Trainee meeting Event',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.verticalSpace,
            IconButton(
                onPressed: () => {Navigator.pop(context)},
                icon: const Icon(Icons.arrow_back)),
            Text(
              l10n.calendar,
              style: AppStyles.text28PxSemiBold,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       CalendarControllerProvider.of(context).controller.add(event1);
            //     },
            //     child: const Text("Add event(temp)")),
            Container(
              height: 500,
              width: 365,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.textGrey),
                  borderRadius: BorderRadius.circular(6)),
              child: DayView(
                eventTileBuilder: (date, events, boundary, start, end) {
                  // Return your widget to display as event tile.
                  return Container(
                    height: 1,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: const Color.fromARGB(255, 206, 204, 204))),
                  );
                },
                startDuration: const Duration(hours: 8),
                timeLineBuilder: (date) {
                  if (date.minute == 0) {
                    if (date.hour < 13) {
                      return Text(
                        '  ${date.hour} AM',
                        style: AppStyles.text12Px,
                      );
                    } else {
                      return Text(
                        '  ${date.hour} PM',
                        style: AppStyles.text12Px,
                      );
                    }
                  } else {
                    return const Text('');
                  }
                },

                timeLineOffset: 8,

                fullDayEventBuilder: (events, date) {
                  // Return your widget to display full day event view.
                  return Container(
                    color: AppColors.black,
                    height: 10,
                  );
                },
                dateStringBuilder: (date, {secondaryDate}) =>
                    formatDateTime(date),

                hourIndicatorSettings: const HourIndicatorSettings(
                    color: Color.fromARGB(255, 197, 196, 196), offset: -7),
                minuteSlotSize: MinuteSlotSize.minutes15,
                showVerticalLine: true,
                showHalfHours: true,
                headerStyle: const HeaderStyle(
                    leftIconVisible: false,
                    rightIconVisible: false,
                    headerPadding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 215, 223))),

                halfHourIndicatorSettings: const HourIndicatorSettings(
                    height: 1.0,
                    color: Color.fromARGB(255, 204, 194, 194),
                    offset: -7,
                    dashSpaceWidth: 2,
                    dashWidth: 2,
                    lineStyle: LineStyle.dashed),

                timeLineWidth: 55, // To display live time line in day view.
                showLiveTimeLineInAllDays:
                    false, // To display live time line in all pages in day view.
                minDay: DateTime(1990),
                maxDay: DateTime(2050),
                initialDay: DateTime(2021),
                heightPerMinute: 0.67, // height occupied by 1 minute time span.
                eventArranger:
                    const SideEventArranger(), // To define how simultaneous events will be arranged.
                onEventTap: (events, date) => print(events),
              ),
            )
          ],
        ),
      ),
    );
  }
}
