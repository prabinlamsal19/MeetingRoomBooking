import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';

class EventTile extends StatelessWidget {
  EventTile({super.key, required this.events});
  List<CalendarEventData<Object?>> events;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 2, left: 5, right: 5),
        width: 5,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(5)),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Event: ',
                    style: AppStyles.text12PxSemiBold,
                  ),
                  Text(
                    events[0].title,
                    style: AppStyles.text12Px,
                  )
                ],
              ),
              5.verticalSpace,
              Row(
                children: [
                  Text(
                    'Speaker: ',
                    style: AppStyles.text12PxSemiBold,
                  ),
                  Text(
                    events[0].event.toString(),
                    style: AppStyles.text12Px,
                  )
                ],
              ),
              5.verticalSpace,
              Row(
                children: [
                  Text(
                    'Floor: ',
                    style: AppStyles.text12PxSemiBold,
                  ),
                  Text(
                    events[0].description.toString(),
                    style: AppStyles.text12Px,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
