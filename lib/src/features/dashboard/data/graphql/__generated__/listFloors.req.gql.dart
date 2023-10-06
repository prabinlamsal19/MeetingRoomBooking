// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i6;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.ast.gql.dart'
    as _i5;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.data.gql.dart'
    as _i2;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/listFloors.var.gql.dart'
    as _i3;

part 'listFloors.req.gql.g.dart';

abstract class GListFloorReq
    implements
        Built<GListFloorReq, GListFloorReqBuilder>,
        _i1.OperationRequest<_i2.GListFloorData, _i3.GListFloorVars> {
  GListFloorReq._();

  factory GListFloorReq([Function(GListFloorReqBuilder b) updates]) =
      _$GListFloorReq;

  static void _initializeBuilder(GListFloorReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ListFloor',
    )
    ..executeOnListen = true;

  @override
  _i3.GListFloorVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GListFloorData? Function(
    _i2.GListFloorData?,
    _i2.GListFloorData?,
  )? get updateResult;
  @override
  _i2.GListFloorData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GListFloorData? parseData(Map<String, dynamic> json) =>
      _i2.GListFloorData.fromJson(json);

  static Serializer<GListFloorReq> get serializer => _$gListFloorReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListFloorReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListFloorReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListFloorReq.serializer,
        json,
      );
}
