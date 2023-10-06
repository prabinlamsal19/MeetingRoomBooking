// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i1;

part 'getOngoingEvents.var.gql.g.dart';

abstract class GGetOngoingEventsVars
    implements Built<GGetOngoingEventsVars, GGetOngoingEventsVarsBuilder> {
  GGetOngoingEventsVars._();

  factory GGetOngoingEventsVars(
          [Function(GGetOngoingEventsVarsBuilder b) updates]) =
      _$GGetOngoingEventsVars;

  static Serializer<GGetOngoingEventsVars> get serializer =>
      _$gGetOngoingEventsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetOngoingEventsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetOngoingEventsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetOngoingEventsVars.serializer,
        json,
      );
}
