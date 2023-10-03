import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/features/calendar/presentation/blocs/toogle_button/toggle_button_cubit.dart';

class ToggleButtonsWidget extends StatelessWidget {
  ToggleButtonsWidget({super.key, required this.isWeekSelected});

  bool isWeekSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
          child: ElevatedButton(
            onPressed: () => context.read<ToggleButtonCubit>().emitWeek(),
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  isWeekSelected ? AppColors.white : AppColors.black,
              backgroundColor:
                  isWeekSelected ? AppColors.purpleAppColor : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text('Week'),
          ),
        ),
        8.horizontalSpace,
        SizedBox(
          height: 32,
          child: ElevatedButton(
            onPressed: () => context.read<ToggleButtonCubit>().emitToday(),
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  !isWeekSelected ? AppColors.white : AppColors.black,
              backgroundColor:
                  !isWeekSelected ? AppColors.purpleAppColor : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text('Today'),
          ),
        ),
      ],
    );
  }
}
