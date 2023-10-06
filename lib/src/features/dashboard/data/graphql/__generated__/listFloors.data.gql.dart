// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i1;

part 'listFloors.data.gql.g.dart';

abstract class GListFloorData
    implements Built<GListFloorData, GListFloorDataBuilder> {
  GListFloorData._();

  factory GListFloorData([Function(GListFloorDataBuilder b) updates]) =
      _$GListFloorData;

  static void _initializeBuilder(GListFloorDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GListFloorData_listFloor> get listFloor;
  static Serializer<GListFloorData> get serializer =>
      _$gListFloorDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListFloorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListFloorData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListFloorData.serializer,
        json,
      );
}

abstract class GListFloorData_listFloor
    implements
        Built<GListFloorData_listFloor, GListFloorData_listFloorBuilder> {
  GListFloorData_listFloor._();

  factory GListFloorData_listFloor(
          [Function(GListFloorData_listFloorBuilder b) updates]) =
      _$GListFloorData_listFloor;

  static void _initializeBuilder(GListFloorData_listFloorBuilder b) =>
      b..G__typename = 'Floor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get floor;
  String? get others;
  bool get isdeleted;
  static Serializer<GListFloorData_listFloor> get serializer =>
      _$gListFloorDataListFloorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListFloorData_listFloor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListFloorData_listFloor? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListFloorData_listFloor.serializer,
        json,
      );
}
