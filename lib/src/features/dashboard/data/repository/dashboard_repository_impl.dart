/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meeting_room/src/features/dashboard/data/models/floor_model.dart';

import '../../domain/repository/dashboard_repository.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl();

  @override
  List<FloorModel> get floors => floors;

  @override
  set floors(List<FloorModel> _floors) {
    floors = [
      FloorModel(floorName: 'Ground Floor', isActive: false),
      FloorModel(
          floorName: 'First Floor',
          isActive: true,
          timeLeft: 10,
          totalTime: 30,
          host: 'Baral Bahadur'),
      FloorModel(floorName: 'Second Floor', isActive: false),
      FloorModel(
          floorName: 'Third Floor',
          isActive: true,
          timeLeft: 20,
          totalTime: 50,
          host: 'Hari Bahadur'),
    ];
  }
}
