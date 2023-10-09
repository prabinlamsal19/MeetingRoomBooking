import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/empty_state_widget.dart';
import 'package:meeting_room/src/features/calendar/calendar.dart';
import 'package:meeting_room/src/features/dashboard/data/models/floor_model.dart';
import 'package:meeting_room/src/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:meeting_room/src/features/dashboard/presentation/blocs/dashboard/dashboard_cubit.dart';
import 'package:meeting_room/src/features/dashboard/presentation/widgets/active_box.dart';
import 'package:meeting_room/src/features/dashboard/presentation/widgets/plain_box.dart';
import 'package:meeting_room/src/features/notification/presentation/pages/settings_page.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final floors = [
    //   FloorModel(floorName: 'Ground Floor', isActive: false),
    //   FloorModel(
    //       floorName: 'First Floor',
    //       isActive: true,
    //       timeLeft: 10,
    //       totalTime: 30,
    //       host: 'Baral Bahadur'),
    //   FloorModel(floorName: 'Second Floor', isActive: false),
    //   FloorModel(
    //       floorName: 'Third Floor',
    //       isActive: true,
    //       timeLeft: 20,
    //       totalTime: 50,
    //       host: 'Hari Bahadur'),
    // ];

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
            Container(
              height: 308,
              child: BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  return state.when(
                      initial: () {
                        BlocProvider.of<DashboardCubit>(context)
                            .getFloorsList();
                        return const CircularProgressIndicator();
                      },
                      loading: () {
                        return const CircularProgressIndicator();
                      },
                      success: ((floors) {
                        return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 14,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1.24),
                          itemCount: floors.length,
                          itemBuilder: (context, index) {
                            final floor = floors[index];
                            return (floor.isActive)
                                ? ActiveBox(
                                    floor: floor.floorName,
                                    host: floor.host,
                                    totalTime: floor.totalTime!,
                                    timeLeft: floor.timeLeft!)
                                : PlainBox(floor: floor.floorName);
                          },
                        );
                      }),
                      error: (() => const Text('Error: No State')));
                },
              ),
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
                      height: 240,
                      width: 480,
                      child: EmptyStateWidget(),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CalendarPage(),
                      ),
                    );
                  },
                  child: const Text('calendar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const SettingsPage(),
                    //   ),
                    // );
                    getIt<DashboardRepository>().getRoomsAndEvents();
                  },
                  child: const Text('settings'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
