/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:injectable/injectable.dart';

abstract class DashboardRemoteSource {}

@LazySingleton(as: DashboardRemoteSource)
class DashboardRemoteSourceImpl implements DashboardRemoteSource {}
