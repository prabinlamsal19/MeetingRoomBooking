/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/toogle_buttons.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/dayview_widget.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/weekview_widget.dart';

@RoutePage()
class CalendarPage extends StatelessWidget {
  CalendarPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            16.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: const Icon(Icons.arrow_back)),
                  Text(
                    l10n.calendar,
                    style: AppStyles.text28PxSemiBold,
                  ),
                  8.verticalSpace,
                  const ToggleButtonsWidget(),
                  8.verticalSpace,
                  const DayViewWidget(),
                  20.verticalSpace,
                  const WeekViewWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
