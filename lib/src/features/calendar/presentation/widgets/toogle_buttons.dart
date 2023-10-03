import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';

class ToggleButtonsWidget extends StatefulWidget {
  const ToggleButtonsWidget({super.key});

  @override
  _ToggleButtonsWidgetState createState() => _ToggleButtonsWidgetState();
}

class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
  late List<bool> _selections;

  @override
  void initState() {
    super.initState();
    _selections = [true, false]; // First button is active, second is inactive
  }

  void _onSelection(int index) {
    setState(() {
      for (int i = 0; i < _selections.length; i++) {
        _selections[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
          child: ElevatedButton(
            onPressed: () => _onSelection(0),
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  _selections[0] ? AppColors.white : AppColors.black,
              backgroundColor:
                  _selections[0] ? AppColors.purpleAppColor : AppColors.white,
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
            onPressed: () => _onSelection(1),
            style: ElevatedButton.styleFrom(
              foregroundColor:
                  _selections[1] ? AppColors.white : AppColors.black,
              backgroundColor:
                  _selections[1] ? AppColors.purpleAppColor : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            // ignore: prefer_const_constructors
            child: Text('Today'),
          ),
        ),
      ],
    );
  }
}
