// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i6;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.ast.gql.dart'
    as _i5;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.data.gql.dart'
    as _i2;
import 'package:meeting_room/src/features/dashboard/data/graphql/__generated__/getOngoingEvents.var.gql.dart'
    as _i3;

part 'getOngoingEvents.req.gql.g.dart';

abstract class GGetOngoingEventsReq
    implements
        Built<GGetOngoingEventsReq, GGetOngoingEventsReqBuilder>,
        _i1.OperationRequest<_i2.GGetOngoingEventsData,
            _i3.GGetOngoingEventsVars> {
  GGetOngoingEventsReq._();

  factory GGetOngoingEventsReq(
          [Function(GGetOngoingEventsReqBuilder b) updates]) =
      _$GGetOngoingEventsReq;

  static void _initializeBuilder(GGetOngoingEventsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetOngoingEvents',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetOngoingEventsVars get vars;
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
  _i2.GGetOngoingEventsData? Function(
    _i2.GGetOngoingEventsData?,
    _i2.GGetOngoingEventsData?,
  )? get updateResult;
  @override
  _i2.GGetOngoingEventsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetOngoingEventsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetOngoingEventsData.fromJson(json);

  static Serializer<GGetOngoingEventsReq> get serializer =>
      _$gGetOngoingEventsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetOngoingEventsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetOngoingEventsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetOngoingEventsReq.serializer,
        json,
      );
}
