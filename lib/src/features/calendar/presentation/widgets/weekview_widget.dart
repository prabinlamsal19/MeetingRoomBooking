import 'package:calendar_view/calendar_view.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/features/calendar/presentation/helpers/calendar_helper.dart';

class WeekViewWidget extends StatelessWidget {
  const WeekViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(bottom: 3),
      height: 510,
      width: 365,
      decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(width: 2, color: AppColors.greyMid),
            left: BorderSide(width: 2, color: AppColors.greyMid),
            bottom: BorderSide(width: 2, color: AppColors.greyMid),
            right: BorderSide(width: 1, color: AppColors.greyMid),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(6)),
      child: WeekView(
        scrollOffset: 301.5,
        controller: CalendarControllerProvider.of(context).controller,
        timeLineWidth: 48,
        weekNumberBuilder: (firstDayOfWeek) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.greyLight,
              border: Border(
                right: BorderSide(
                    width: 1,
                    color: AppColors.greyMid), // Left border with width 1
              ),
            ),
            child: Text(
              '  GMT +5:45',
              style: AppStyles.text10Px,
            ),
          );
        },
        weekPageHeaderBuilder: ((startDate, endDate) {
          return const SizedBox.shrink();
        }),
        liveTimeIndicatorSettings: HourIndicatorSettings.none(),
        weekTitleHeight: 28,
        weekDayBuilder: (date) => Container(
          decoration: const BoxDecoration(
            color: AppColors.greyLight,
            border: Border(
              right: BorderSide(width: 1, color: AppColors.greyMid),
            ),
          ),
          child: Center(
            child: Text(
              formatDateTimeShort(date),
              style: AppStyles.text10Px,
            ),
          ),
        ),
        showQuarterHours: true,
        safeAreaOption: const SafeAreaOption(
          top: false,
          bottom: false,
        ),
        eventTileBuilder: (date, events, boundary, start, end) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFC19B02),
                ),
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5)),
          );
        },
        timeLineBuilder: (date) {
          return timelineBuilder(date);
        },
        timeLineOffset: 8,
        fullDayEventBuilder: (events, date) {
          return Container(
            color: AppColors.black,
            height: 10,
          );
        },
        hourIndicatorSettings: const HourIndicatorSettings(
            color: Color.fromARGB(255, 197, 196, 196), offset: -7),
        minuteSlotSize: MinuteSlotSize.minutes30,
        showHalfHours: true,
        headerStyle: const HeaderStyle(
          leftIconVisible: false,
          rightIconVisible: false,
          headerPadding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 217, 215, 223),
          ),
        ),

        halfHourIndicatorSettings: const HourIndicatorSettings(
            height: 1.0,
            color: Color.fromARGB(255, 204, 194, 194),
            offset: -7,
            dashSpaceWidth: 2,
            dashWidth: 2,
            lineStyle: LineStyle.dashed),
        showLiveTimeLineInAllDays: true,
        minDay: DateTime(1990),
        maxDay: DateTime(2050),
        initialDay: DateTime(2023, 1, 1),
        heightPerMinute: 0.67,
        // eventArranger:
        //     const SideEventArranger(), //for simultaneous event
        onEventTap: (events, date) => print(events),
      ),
    );
  }
}
