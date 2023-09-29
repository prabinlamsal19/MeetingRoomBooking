/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:meeting_room/src/core/typedefs/typedefs.dart';

abstract class AuthRepository {
  bool get isLoggedIn;

  bool get isFirstTimeLogin;

  EitherResponse<String> login(Map<String, dynamic> values);
}
