// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:meeting_room/schema/__generated__/serializers.gql.dart' as _i2;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

class GNotifyTime extends EnumClass {
  const GNotifyTime._(String name) : super(name);

  static const GNotifyTime TEN_MINUTES = _$gNotifyTimeTEN_MINUTES;

  static const GNotifyTime FIFTEEN_MINUTES = _$gNotifyTimeFIFTEEN_MINUTES;

  static const GNotifyTime THIRTY_MINUTES = _$gNotifyTimeTHIRTY_MINUTES;

  static const GNotifyTime ONE_HOUR = _$gNotifyTimeONE_HOUR;

  static Serializer<GNotifyTime> get serializer => _$gNotifyTimeSerializer;

  static BuiltSet<GNotifyTime> get values => _$gNotifyTimeValues;

  static GNotifyTime valueOf(String name) => _$gNotifyTimeValueOf(name);
}

abstract class GEditUserDto
    implements Built<GEditUserDto, GEditUserDtoBuilder> {
  GEditUserDto._();

  factory GEditUserDto([Function(GEditUserDtoBuilder b) updates]) =
      _$GEditUserDto;

  String? get fullName;
  String? get phoneNumber;
  String? get designation;
  double? get floor;
  String? get profilePic;
  static Serializer<GEditUserDto> get serializer => _$gEditUserDtoSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEditUserDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEditUserDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEditUserDto.serializer,
        json,
      );
}

abstract class GLoginDto implements Built<GLoginDto, GLoginDtoBuilder> {
  GLoginDto._();

  factory GLoginDto([Function(GLoginDtoBuilder b) updates]) = _$GLoginDto;

  String get email;
  static Serializer<GLoginDto> get serializer => _$gLoginDtoSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLoginDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLoginDto.serializer,
        json,
      );
}

abstract class GOtpDto implements Built<GOtpDto, GOtpDtoBuilder> {
  GOtpDto._();

  factory GOtpDto([Function(GOtpDtoBuilder b) updates]) = _$GOtpDto;

  String get email;
  String get otp;
  static Serializer<GOtpDto> get serializer => _$gOtpDtoSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOtpDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOtpDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOtpDto.serializer,
        json,
      );
}

abstract class GCreateBookingDto
    implements Built<GCreateBookingDto, GCreateBookingDtoBuilder> {
  GCreateBookingDto._();

  factory GCreateBookingDto([Function(GCreateBookingDtoBuilder b) updates]) =
      _$GCreateBookingDto;

  String get eventName;
  String get description;
  GDateTime get date;
  double get floor;
  GDateTime get startTime;
  GDateTime get endTime;
  bool get googleEvent;
  String get notifyTime;
  BuiltList<String> get guests;
  static Serializer<GCreateBookingDto> get serializer =>
      _$gCreateBookingDtoSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBookingDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookingDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBookingDto.serializer,
        json,
      );
}

abstract class GcreateFloorDto
    implements Built<GcreateFloorDto, GcreateFloorDtoBuilder> {
  GcreateFloorDto._();

  factory GcreateFloorDto([Function(GcreateFloorDtoBuilder b) updates]) =
      _$GcreateFloorDto;

  double get floor;
  String? get others;
  static Serializer<GcreateFloorDto> get serializer =>
      _$gcreateFloorDtoSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GcreateFloorDto.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateFloorDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GcreateFloorDto.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
