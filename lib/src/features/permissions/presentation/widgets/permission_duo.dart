import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';

class PermissionDuo extends StatefulWidget {
  PermissionDuo({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<PermissionDuo> createState() => _PermissionDuoState();
}

class _PermissionDuoState extends State<PermissionDuo> {
  bool boolValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.text),
        Container(
          child: Transform.scale(
            scale: 0.7,
            child: Switch.adaptive(
              inactiveThumbColor: AppColors.white,
              inactiveTrackColor: AppColors.textLight,
              activeColor: AppColors.primary,
              value: boolValue,
              onChanged: (value) {
                print("The value given by the callback is $value");
                setState(() {
                  boolValue = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
