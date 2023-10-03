import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/features/calendar/presentation/blocs/calendar/calendar_cubit.dart';
import 'package:meeting_room/src/features/calendar/presentation/helpers/calendar_helper.dart';

class DayViewWidget extends StatefulWidget {
  const DayViewWidget({super.key});

  @override
  State<DayViewWidget> createState() => _DayViewWidgetState();
}

class _DayViewWidgetState extends State<DayViewWidget> {
  @override
  Widget build(BuildContext context) {
    final event1 = CalendarEventData(
        title: 'Trainee meeting',
        date: DateTime(2023, 1, 1),
        event: 'Trainee meeting Event',
        startTime: DateTime(2023, 1, 1, 10, 0),
        endTime: DateTime(2023, 1, 1, 12, 0),
        color: Colors.blue);
    CalendarControllerProvider.of(context).controller.add(event1);
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(bottom: 3),
      height: 510,
      width: 365,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.textGrey),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(6)),
      child: DayView(
        controller: CalendarControllerProvider.of(context).controller,
        liveTimeIndicatorSettings: HourIndicatorSettings.none(),
        showQuarterHours: true,
        safeAreaOption: const SafeAreaOption(
          right: false,
          left: false,
          top: false,
          bottom: false,
        ),
        fullDayEventBuilder: (events, date) {
          return Text(events.toString() + date.day.toString());
        },
        eventTileBuilder: (date, events, boundary, start, end) {
          // Return your widget to display as event tile.
          return Container(
              color: AppColors.purpleAppColor,
              child: const Text('Event yeah!!'));
        },
        startDuration: const Duration(hours: 8),
        timeLineBuilder: (date) {
          return timelineBuilder(date);
        },
        timeLineOffset: 8,
        dayTitleBuilder: (date) => Container(
          height: 30,
          width: 365,
          decoration: const BoxDecoration(
            color: AppColors.greyLight,
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 0.3,
              ),
              left: BorderSide(
                color: Colors.black,
                width: 0.00001,
              ),
              right: BorderSide(
                color: Colors.black,
                width: 0.00001,
              ),
              bottom: BorderSide(
                color: Colors.black,
                width: 0.3,
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: Row(
            children: [
              12.horizontalSpace,
              const Column(
                children: [
                  Text(
                    'GMT',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    '+5:45',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              10.horizontalSpace,
              const VerticalDivider(
                color: AppColors.textGrey,
              ),
              Text(formatDateTime(date)),
            ],
          ),
        ),
        hourIndicatorSettings:
            const HourIndicatorSettings(color: AppColors.greyMid, offset: -7),
        minuteSlotSize: MinuteSlotSize.minutes30,
        showVerticalLine: true,
        showHalfHours: true,
        headerStyle: const HeaderStyle(
            leftIconVisible: false,
            rightIconVisible: false,
            headerPadding: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 217, 215, 223))),
        halfHourIndicatorSettings: const HourIndicatorSettings(
            height: 1.0,
            color: Color.fromARGB(255, 204, 194, 194),
            offset: -7,
            dashSpaceWidth: 2,
            dashWidth: 2,
            lineStyle: LineStyle.dashed),
        timeLineWidth: 55,
        showLiveTimeLineInAllDays: true,
        minDay: DateTime(1990),
        maxDay: DateTime(2050),
        initialDay: DateTime(2021),
        heightPerMinute: 0.67,
        onEventTap: (events, date) => print(events),
      ),
    );
  }
}
