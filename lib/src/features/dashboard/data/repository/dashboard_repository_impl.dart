/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/features/auth/data/repository/ferry_init.dart';
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.data.gql.dart';
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.req.gql.dart';
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

  Duration giveTimeLeft(GGetOngoingEventsData_ongoingEvents p0) {
    final DateTime endTime = DateTime.parse(p0.endTime.value).toUtc();
    final DateTime currentTime = DateTime.now().toUtc();

    Duration timeLeft = endTime.isAfter(currentTime)
        ? endTime.difference(currentTime)
        : Duration.zero;

    return timeLeft;
  }

  Duration giveTotalTime(GGetOngoingEventsData_ongoingEvents p0) {
    final DateTime startTime = DateTime.parse(p0.startTime.value).toUtc();
    final DateTime endTime = DateTime.parse(p0.endTime.value).toUtc();

    Duration totalTime = endTime.difference(startTime);

    return totalTime;
  }

  @override
  Future<List<FloorModel>> getRoomsAndEvents() async {
    final gqlClient = await getIt<FerryClientRepository>().initClient();
    late final roomList;
    List<FloorModel> ongoingEventsList = [];

    List<FloorModel> floorList = []; 

    await gqlClient.request(getOngoingEventsRequest).listen((response) {
      response.data?.ongoingEvents.forEach((p0) {
        ongoingEventsList.add(FloorModel(
            floorName: p0.floor.toString(),
            isActive: true,
            host: p0.hostInfo!.fullName,
            timeLeft: giveTimeLeft(p0),
            totalTime: giveTotalTime(p0)));
      });
    });

    await gqlClient.request(listFloorsRequest).listen((response) {
      response.data?.listFloor.forEach((p0) {
        floorList
            .add(FloorModel(floorName: p0.floor.toString(), isActive: false));
      });
    });
    
    return floorList;
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
