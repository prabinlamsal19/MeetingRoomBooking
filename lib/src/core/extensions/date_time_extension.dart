import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get parsedDate => DateFormat('yyyy-MM-dd').format(this);

  String get parsedTime => DateFormat('hh:mm a').format(this);
}

extension TimeOfDayX on TimeOfDay {
  String get parsedTime {
    final currentDate = DateTime.now();
    final newDate = DateTime(
        currentDate.year, currentDate.month, currentDate.year, hour, minute);
    return DateFormat('hh:mm a').format(newDate);
  }
}
