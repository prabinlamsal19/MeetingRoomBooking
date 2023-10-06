// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i1;

part 'listFloors.var.gql.g.dart';

abstract class GListFloorVars
    implements Built<GListFloorVars, GListFloorVarsBuilder> {
  GListFloorVars._();

  factory GListFloorVars([Function(GListFloorVarsBuilder b) updates]) =
      _$GListFloorVars;

  static Serializer<GListFloorVars> get serializer =>
      _$gListFloorVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListFloorVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListFloorVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListFloorVars.serializer,
        json,
      );
}
