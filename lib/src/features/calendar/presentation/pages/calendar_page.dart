/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/features/calendar/presentation/blocs/toogle_button/toggle_button_cubit.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/toggle_button.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/dayview_widget.dart';
import 'package:meeting_room/src/features/calendar/presentation/widgets/weekview_widget.dart';

@RoutePage()
class CalendarPage extends StatelessWidget {
  CalendarPage({super.key});
  late bool isWeekSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ToggleButtonCubit, ToggleButtonState>(
        builder: (context, state) {
          state.when(
            today: () => isWeekSelected = false,
            week: () => isWeekSelected = true,
          );
          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                      ToggleButtonsWidget(
                        isWeekSelected: isWeekSelected,
                      ),
                      8.verticalSpace,
                      if (isWeekSelected)
                        const WeekViewWidget()
                      else
                        const DayViewWidget(),
                      20.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
