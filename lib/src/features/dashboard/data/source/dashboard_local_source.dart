/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:injectable/injectable.dart';

abstract class DashboardLocalSource {}

@LazySingleton(as: DashboardLocalSource)
class DashboardLocalSourceImpl implements DashboardLocalSource {}
