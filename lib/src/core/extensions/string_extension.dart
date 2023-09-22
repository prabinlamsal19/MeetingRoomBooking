/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringX on String {
  bool get isEmail => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);

  bool get strongPassword =>
      RegExp(r'''(^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,}$)''')
          .hasMatch(this);

  bool get mediumPassword =>
      RegExp(r'''(^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6,}$)''').hasMatch(this);

  DateTime get parseDate => DateFormat('yyyy-MM-dd').parse(this);

  TimeOfDay get parsedTime =>
      TimeOfDay.fromDateTime(DateFormat('hh:mm a').parse(this));
}
