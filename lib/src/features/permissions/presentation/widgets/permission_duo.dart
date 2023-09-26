import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/features/dashboard/presentation/pages/dashboard_page.dart';

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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (Context) => const DashboardPage()));
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
