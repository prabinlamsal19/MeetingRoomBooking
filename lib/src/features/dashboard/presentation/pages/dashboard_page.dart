/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/empty_state_widget.dart';
import 'package:meeting_room/src/features/calendar/calendar.dart';
import 'package:meeting_room/src/features/dashboard/presentation/widgets/active_box.dart';
import 'package:meeting_room/src/features/dashboard/presentation/widgets/plain_box.dart';
import 'package:meeting_room/src/features/permissions/permissions.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          10.verticalSpace,
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              l10n.dashboard,
              style: AppStyles.text28PxSemiBold,
              textAlign: TextAlign.start,
            ),
          ),
          10.verticalSpace,
          Row(
            children: [
              PlaneBox(
                text: l10n.groundFloor,
              ),
              20.horizontalSpace,
              ActiveBox(
                  floor: l10n.firstFloor,
                  host: 'Hari Bahadur',
                  totalTime: 30,
                  timeLeft: 10),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              PlaneBox(text: l10n.secondFloor),
              20.horizontalSpace,
              PlaneBox(
                text: l10n.thirdFloor,
              ),
            ],
          ),
          10.verticalSpace,
          PhysicalModel(
              color: AppColors.white,
              elevation: 3,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.upcomingEvents,
                      style: AppStyles.text20PxSemiBold,
                    ),
                    const SizedBox(
                        height: 240, width: 480, child: EmptyStateWidget()),
                  ],
                ),
              )),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CalendarPage()));
                  },
                  child: Text("calendar")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CalendarPage()));
                  },
                  child: Text("notifications"))
            ],
          )
        ],
      ),
    ));
  }
}
