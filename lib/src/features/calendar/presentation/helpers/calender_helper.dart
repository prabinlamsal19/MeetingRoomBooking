import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';

String _getDaySuffix(int day) {
  if (day >= 11 && day <= 13) {
    return 'th';
  }
  switch (day % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}

String formatDateTime(DateTime date) {
  final day = date.day;
  final month = date.month;
  final monthName = DateFormat.MMMM()
      .format(date); // Use the DateFormat package to get the month name
  return '$day${_getDaySuffix(day)} $monthName';
}

//timeline builder time
Widget timelineBuilder(DateTime date) {
  if (date.minute == 0) {
    if (date.hour < 13) {
      return Text(
        '  ${date.hour} AM',
        style: AppStyles.text12Px,
      );
    } else {
      return (date.hour < 13)
          ? Text(
              '  ${date.hour} PM',
              style: AppStyles.text12Px,
            )
          : Text(
              '  ${date.hour - 12} PM',
              style: AppStyles.text12Px,
            );
    }
  } else {
    return const Text('');
  }
}
