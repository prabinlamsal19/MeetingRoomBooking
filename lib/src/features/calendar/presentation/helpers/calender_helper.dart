import 'package:intl/intl.dart';

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
  return "$day${_getDaySuffix(day)} $monthName";
}
