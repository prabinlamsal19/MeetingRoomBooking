// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:meeting_room/schema/__generated__/schema.schema.gql.dart'
    show
        GCreateBookingDto,
        GDateTime,
        GEditUserDto,
        GLoginDto,
        GNotifyTime,
        GOtpDto,
        GcreateFloorDto;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.data.gql.dart'
    show
        GGetOngoingEventsData,
        GGetOngoingEventsData_ongoingEvents,
        GGetOngoingEventsData_ongoingEvents_hostInfo;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.req.gql.dart'
    show GGetOngoingEventsReq;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.var.gql.dart'
    show GGetOngoingEventsVars;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.data.gql.dart'
    show GListFloorData, GListFloorData_listFloor;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.req.gql.dart'
    show GListFloorReq;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.var.gql.dart'
    show GListFloorVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateBookingDto,
  GDateTime,
  GEditUserDto,
  GGetOngoingEventsData,
  GGetOngoingEventsData_ongoingEvents,
  GGetOngoingEventsData_ongoingEvents_hostInfo,
  GGetOngoingEventsReq,
  GGetOngoingEventsVars,
  GListFloorData,
  GListFloorData_listFloor,
  GListFloorReq,
  GListFloorVars,
  GLoginDto,
  GNotifyTime,
  GOtpDto,
  GcreateFloorDto,
])
final Serializers serializers = _serializersBuilder.build();
