// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meeting_room/schema/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i1;

part 'getOngoingEvents.data.gql.g.dart';

abstract class GGetOngoingEventsData
    implements Built<GGetOngoingEventsData, GGetOngoingEventsDataBuilder> {
  GGetOngoingEventsData._();

  factory GGetOngoingEventsData(
          [Function(GGetOngoingEventsDataBuilder b) updates]) =
      _$GGetOngoingEventsData;

  static void _initializeBuilder(GGetOngoingEventsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetOngoingEventsData_ongoingEvents> get ongoingEvents;
  static Serializer<GGetOngoingEventsData> get serializer =>
      _$gGetOngoingEventsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetOngoingEventsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetOngoingEventsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetOngoingEventsData.serializer,
        json,
      );
}

abstract class GGetOngoingEventsData_ongoingEvents
    implements
        Built<GGetOngoingEventsData_ongoingEvents,
            GGetOngoingEventsData_ongoingEventsBuilder> {
  GGetOngoingEventsData_ongoingEvents._();

  factory GGetOngoingEventsData_ongoingEvents(
          [Function(GGetOngoingEventsData_ongoingEventsBuilder b) updates]) =
      _$GGetOngoingEventsData_ongoingEvents;

  static void _initializeBuilder(
          GGetOngoingEventsData_ongoingEventsBuilder b) =>
      b..G__typename = 'upcomingEventsDto';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get eventName;
  String get description;
  double get floor;
  _i2.GDateTime get startTime;
  GGetOngoingEventsData_ongoingEvents_hostInfo? get hostInfo;
  static Serializer<GGetOngoingEventsData_ongoingEvents> get serializer =>
      _$gGetOngoingEventsDataOngoingEventsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetOngoingEventsData_ongoingEvents.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetOngoingEventsData_ongoingEvents? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetOngoingEventsData_ongoingEvents.serializer,
        json,
      );
}

abstract class GGetOngoingEventsData_ongoingEvents_hostInfo
    implements
        Built<GGetOngoingEventsData_ongoingEvents_hostInfo,
            GGetOngoingEventsData_ongoingEvents_hostInfoBuilder> {
  GGetOngoingEventsData_ongoingEvents_hostInfo._();

  factory GGetOngoingEventsData_ongoingEvents_hostInfo(
      [Function(GGetOngoingEventsData_ongoingEvents_hostInfoBuilder b)
          updates]) = _$GGetOngoingEventsData_ongoingEvents_hostInfo;

  static void _initializeBuilder(
          GGetOngoingEventsData_ongoingEvents_hostInfoBuilder b) =>
      b..G__typename = 'HostDescription';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fullName;
  String get designation;
  static Serializer<GGetOngoingEventsData_ongoingEvents_hostInfo>
      get serializer => _$gGetOngoingEventsDataOngoingEventsHostInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetOngoingEventsData_ongoingEvents_hostInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetOngoingEventsData_ongoingEvents_hostInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetOngoingEventsData_ongoingEvents_hostInfo.serializer,
        json,
      );
}
