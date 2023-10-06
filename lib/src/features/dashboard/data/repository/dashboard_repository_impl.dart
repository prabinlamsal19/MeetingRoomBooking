/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';
import 'dart:convert';

import 'package:ferry/ferry.dart';
import 'package:injectable/injectable.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/features/auth/data/repository/ferry_init.dart';
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.req.gql.dart';
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.data.gql.dart';
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.req.gql.dart';
import 'package:meeting_room/src/features/dashboard/data/models/floor_model.dart';

import '../../domain/repository/dashboard_repository.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl();

  //get the room data

  //request for getting the room data
  final listFloorsRequest = GListFloorReq(((b) => b));
  final getOngoingEventsRequest = GGetOngoingEventsReq(((b) => b));

  @override
  void getRoomsAndEvents() async {
    final gqlClient = await getIt<FerryClientRepository>().initClient();
    await gqlClient
        .request(listFloorsRequest)
        .listen((response) => print(response.data!));

    print('************below is the ongoing events request******************');

    await gqlClient
        .request(getOngoingEventsRequest)
        .listen((event) => print(event.data));
  }

  // @override
  // Future<List<FloorModel>> getFloorModelList() async {
  // }
}

// final floors = [
//     FloorModel(floorName: 'Ground Floor', isActive: false),
//     FloorModel(
//         floorName: 'First Floor',
//         isActive: true,
//         timeLeft: 10,
//         totalTime: 30,
//         host: 'Baral Bahadur'),
//     FloorModel(floorName: 'Second Floor', isActive: false),
//     FloorModel(
//         floorName: 'Third Floor',
//         isActive: true,
//         timeLeft: 20,
//         totalTime: 50,
//         host: 'Hari Bahadur'),
//   ];
