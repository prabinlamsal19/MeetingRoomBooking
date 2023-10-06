// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GNotifyTime _$gNotifyTimeTEN_MINUTES = const GNotifyTime._('TEN_MINUTES');
const GNotifyTime _$gNotifyTimeFIFTEEN_MINUTES =
    const GNotifyTime._('FIFTEEN_MINUTES');
const GNotifyTime _$gNotifyTimeTHIRTY_MINUTES =
    const GNotifyTime._('THIRTY_MINUTES');
const GNotifyTime _$gNotifyTimeONE_HOUR = const GNotifyTime._('ONE_HOUR');

GNotifyTime _$gNotifyTimeValueOf(String name) {
  switch (name) {
    case 'TEN_MINUTES':
      return _$gNotifyTimeTEN_MINUTES;
    case 'FIFTEEN_MINUTES':
      return _$gNotifyTimeFIFTEEN_MINUTES;
    case 'THIRTY_MINUTES':
      return _$gNotifyTimeTHIRTY_MINUTES;
    case 'ONE_HOUR':
      return _$gNotifyTimeONE_HOUR;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GNotifyTime> _$gNotifyTimeValues =
    new BuiltSet<GNotifyTime>(const <GNotifyTime>[
  _$gNotifyTimeTEN_MINUTES,
  _$gNotifyTimeFIFTEEN_MINUTES,
  _$gNotifyTimeTHIRTY_MINUTES,
  _$gNotifyTimeONE_HOUR,
]);

Serializer<GNotifyTime> _$gNotifyTimeSerializer = new _$GNotifyTimeSerializer();
Serializer<GEditUserDto> _$gEditUserDtoSerializer =
    new _$GEditUserDtoSerializer();
Serializer<GLoginDto> _$gLoginDtoSerializer = new _$GLoginDtoSerializer();
Serializer<GOtpDto> _$gOtpDtoSerializer = new _$GOtpDtoSerializer();
Serializer<GCreateBookingDto> _$gCreateBookingDtoSerializer =
    new _$GCreateBookingDtoSerializer();
Serializer<GcreateFloorDto> _$gcreateFloorDtoSerializer =
    new _$GcreateFloorDtoSerializer();

class _$GNotifyTimeSerializer implements PrimitiveSerializer<GNotifyTime> {
  @override
  final Iterable<Type> types = const <Type>[GNotifyTime];
  @override
  final String wireName = 'GNotifyTime';

  @override
  Object serialize(Serializers serializers, GNotifyTime object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GNotifyTime deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GNotifyTime.valueOf(serialized as String);
}

class _$GEditUserDtoSerializer implements StructuredSerializer<GEditUserDto> {
  @override
  final Iterable<Type> types = const [GEditUserDto, _$GEditUserDto];
  @override
  final String wireName = 'GEditUserDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditUserDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.designation;
    if (value != null) {
      result
        ..add('designation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.floor;
    if (value != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.profilePic;
    if (value != null) {
      result
        ..add('profilePic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GEditUserDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditUserDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'designation':
          result.designation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'profilePic':
          result.profilePic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginDtoSerializer implements StructuredSerializer<GLoginDto> {
  @override
  final Iterable<Type> types = const [GLoginDto, _$GLoginDto];
  @override
  final String wireName = 'GLoginDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOtpDtoSerializer implements StructuredSerializer<GOtpDto> {
  @override
  final Iterable<Type> types = const [GOtpDto, _$GOtpDto];
  @override
  final String wireName = 'GOtpDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOtpDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'otp',
      serializers.serialize(object.otp, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GOtpDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOtpDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookingDtoSerializer
    implements StructuredSerializer<GCreateBookingDto> {
  @override
  final Iterable<Type> types = const [GCreateBookingDto, _$GCreateBookingDto];
  @override
  final String wireName = 'GCreateBookingDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBookingDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'eventName',
      serializers.serialize(object.eventName,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(GDateTime)),
      'floor',
      serializers.serialize(object.floor,
          specifiedType: const FullType(double)),
      'startTime',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(GDateTime)),
      'endTime',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(GDateTime)),
      'googleEvent',
      serializers.serialize(object.googleEvent,
          specifiedType: const FullType(bool)),
      'notifyTime',
      serializers.serialize(object.notifyTime,
          specifiedType: const FullType(String)),
      'guests',
      serializers.serialize(object.guests,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GCreateBookingDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookingDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eventName':
          result.eventName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'startTime':
          result.startTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'endTime':
          result.endTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'googleEvent':
          result.googleEvent = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'notifyTime':
          result.notifyTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'guests':
          result.guests.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateFloorDtoSerializer
    implements StructuredSerializer<GcreateFloorDto> {
  @override
  final Iterable<Type> types = const [GcreateFloorDto, _$GcreateFloorDto];
  @override
  final String wireName = 'GcreateFloorDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateFloorDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'floor',
      serializers.serialize(object.floor,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.others;
    if (value != null) {
      result
        ..add('others')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcreateFloorDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateFloorDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'others':
          result.others = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GEditUserDto extends GEditUserDto {
  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final String? designation;
  @override
  final double? floor;
  @override
  final String? profilePic;

  factory _$GEditUserDto([void Function(GEditUserDtoBuilder)? updates]) =>
      (new GEditUserDtoBuilder()..update(updates))._build();

  _$GEditUserDto._(
      {this.fullName,
      this.phoneNumber,
      this.designation,
      this.floor,
      this.profilePic})
      : super._();

  @override
  GEditUserDto rebuild(void Function(GEditUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditUserDtoBuilder toBuilder() => new GEditUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditUserDto &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        designation == other.designation &&
        floor == other.floor &&
        profilePic == other.profilePic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, designation.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, profilePic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEditUserDto')
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('designation', designation)
          ..add('floor', floor)
          ..add('profilePic', profilePic))
        .toString();
  }
}

class GEditUserDtoBuilder
    implements Builder<GEditUserDto, GEditUserDtoBuilder> {
  _$GEditUserDto? _$v;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _designation;
  String? get designation => _$this._designation;
  set designation(String? designation) => _$this._designation = designation;

  double? _floor;
  double? get floor => _$this._floor;
  set floor(double? floor) => _$this._floor = floor;

  String? _profilePic;
  String? get profilePic => _$this._profilePic;
  set profilePic(String? profilePic) => _$this._profilePic = profilePic;

  GEditUserDtoBuilder();

  GEditUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _designation = $v.designation;
      _floor = $v.floor;
      _profilePic = $v.profilePic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditUserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditUserDto;
  }

  @override
  void update(void Function(GEditUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEditUserDto build() => _build();

  _$GEditUserDto _build() {
    final _$result = _$v ??
        new _$GEditUserDto._(
            fullName: fullName,
            phoneNumber: phoneNumber,
            designation: designation,
            floor: floor,
            profilePic: profilePic);
    replace(_$result);
    return _$result;
  }
}

class _$GLoginDto extends GLoginDto {
  @override
  final String email;

  factory _$GLoginDto([void Function(GLoginDtoBuilder)? updates]) =>
      (new GLoginDtoBuilder()..update(updates))._build();

  _$GLoginDto._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GLoginDto', 'email');
  }

  @override
  GLoginDto rebuild(void Function(GLoginDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginDtoBuilder toBuilder() => new GLoginDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginDto && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginDto')..add('email', email))
        .toString();
  }
}

class GLoginDtoBuilder implements Builder<GLoginDto, GLoginDtoBuilder> {
  _$GLoginDto? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GLoginDtoBuilder();

  GLoginDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginDto;
  }

  @override
  void update(void Function(GLoginDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginDto build() => _build();

  _$GLoginDto _build() {
    final _$result = _$v ??
        new _$GLoginDto._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginDto', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GOtpDto extends GOtpDto {
  @override
  final String email;
  @override
  final String otp;

  factory _$GOtpDto([void Function(GOtpDtoBuilder)? updates]) =>
      (new GOtpDtoBuilder()..update(updates))._build();

  _$GOtpDto._({required this.email, required this.otp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GOtpDto', 'email');
    BuiltValueNullFieldError.checkNotNull(otp, r'GOtpDto', 'otp');
  }

  @override
  GOtpDto rebuild(void Function(GOtpDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOtpDtoBuilder toBuilder() => new GOtpDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOtpDto && email == other.email && otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOtpDto')
          ..add('email', email)
          ..add('otp', otp))
        .toString();
  }
}

class GOtpDtoBuilder implements Builder<GOtpDto, GOtpDtoBuilder> {
  _$GOtpDto? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  GOtpDtoBuilder();

  GOtpDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOtpDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOtpDto;
  }

  @override
  void update(void Function(GOtpDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOtpDto build() => _build();

  _$GOtpDto _build() {
    final _$result = _$v ??
        new _$GOtpDto._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GOtpDto', 'email'),
            otp: BuiltValueNullFieldError.checkNotNull(otp, r'GOtpDto', 'otp'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBookingDto extends GCreateBookingDto {
  @override
  final String eventName;
  @override
  final String description;
  @override
  final GDateTime date;
  @override
  final double floor;
  @override
  final GDateTime startTime;
  @override
  final GDateTime endTime;
  @override
  final bool googleEvent;
  @override
  final String notifyTime;
  @override
  final BuiltList<String> guests;

  factory _$GCreateBookingDto(
          [void Function(GCreateBookingDtoBuilder)? updates]) =>
      (new GCreateBookingDtoBuilder()..update(updates))._build();

  _$GCreateBookingDto._(
      {required this.eventName,
      required this.description,
      required this.date,
      required this.floor,
      required this.startTime,
      required this.endTime,
      required this.googleEvent,
      required this.notifyTime,
      required this.guests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        eventName, r'GCreateBookingDto', 'eventName');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GCreateBookingDto', 'description');
    BuiltValueNullFieldError.checkNotNull(date, r'GCreateBookingDto', 'date');
    BuiltValueNullFieldError.checkNotNull(floor, r'GCreateBookingDto', 'floor');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'GCreateBookingDto', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'GCreateBookingDto', 'endTime');
    BuiltValueNullFieldError.checkNotNull(
        googleEvent, r'GCreateBookingDto', 'googleEvent');
    BuiltValueNullFieldError.checkNotNull(
        notifyTime, r'GCreateBookingDto', 'notifyTime');
    BuiltValueNullFieldError.checkNotNull(
        guests, r'GCreateBookingDto', 'guests');
  }

  @override
  GCreateBookingDto rebuild(void Function(GCreateBookingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookingDtoBuilder toBuilder() =>
      new GCreateBookingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookingDto &&
        eventName == other.eventName &&
        description == other.description &&
        date == other.date &&
        floor == other.floor &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        googleEvent == other.googleEvent &&
        notifyTime == other.notifyTime &&
        guests == other.guests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, googleEvent.hashCode);
    _$hash = $jc(_$hash, notifyTime.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBookingDto')
          ..add('eventName', eventName)
          ..add('description', description)
          ..add('date', date)
          ..add('floor', floor)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('googleEvent', googleEvent)
          ..add('notifyTime', notifyTime)
          ..add('guests', guests))
        .toString();
  }
}

class GCreateBookingDtoBuilder
    implements Builder<GCreateBookingDto, GCreateBookingDtoBuilder> {
  _$GCreateBookingDto? _$v;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GDateTimeBuilder? _date;
  GDateTimeBuilder get date => _$this._date ??= new GDateTimeBuilder();
  set date(GDateTimeBuilder? date) => _$this._date = date;

  double? _floor;
  double? get floor => _$this._floor;
  set floor(double? floor) => _$this._floor = floor;

  GDateTimeBuilder? _startTime;
  GDateTimeBuilder get startTime =>
      _$this._startTime ??= new GDateTimeBuilder();
  set startTime(GDateTimeBuilder? startTime) => _$this._startTime = startTime;

  GDateTimeBuilder? _endTime;
  GDateTimeBuilder get endTime => _$this._endTime ??= new GDateTimeBuilder();
  set endTime(GDateTimeBuilder? endTime) => _$this._endTime = endTime;

  bool? _googleEvent;
  bool? get googleEvent => _$this._googleEvent;
  set googleEvent(bool? googleEvent) => _$this._googleEvent = googleEvent;

  String? _notifyTime;
  String? get notifyTime => _$this._notifyTime;
  set notifyTime(String? notifyTime) => _$this._notifyTime = notifyTime;

  ListBuilder<String>? _guests;
  ListBuilder<String> get guests =>
      _$this._guests ??= new ListBuilder<String>();
  set guests(ListBuilder<String>? guests) => _$this._guests = guests;

  GCreateBookingDtoBuilder();

  GCreateBookingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventName = $v.eventName;
      _description = $v.description;
      _date = $v.date.toBuilder();
      _floor = $v.floor;
      _startTime = $v.startTime.toBuilder();
      _endTime = $v.endTime.toBuilder();
      _googleEvent = $v.googleEvent;
      _notifyTime = $v.notifyTime;
      _guests = $v.guests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBookingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookingDto;
  }

  @override
  void update(void Function(GCreateBookingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookingDto build() => _build();

  _$GCreateBookingDto _build() {
    _$GCreateBookingDto _$result;
    try {
      _$result = _$v ??
          new _$GCreateBookingDto._(
              eventName: BuiltValueNullFieldError.checkNotNull(
                  eventName, r'GCreateBookingDto', 'eventName'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GCreateBookingDto', 'description'),
              date: date.build(),
              floor: BuiltValueNullFieldError.checkNotNull(
                  floor, r'GCreateBookingDto', 'floor'),
              startTime: startTime.build(),
              endTime: endTime.build(),
              googleEvent: BuiltValueNullFieldError.checkNotNull(
                  googleEvent, r'GCreateBookingDto', 'googleEvent'),
              notifyTime: BuiltValueNullFieldError.checkNotNull(
                  notifyTime, r'GCreateBookingDto', 'notifyTime'),
              guests: guests.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'date';
        date.build();

        _$failedField = 'startTime';
        startTime.build();
        _$failedField = 'endTime';
        endTime.build();

        _$failedField = 'guests';
        guests.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateBookingDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateFloorDto extends GcreateFloorDto {
  @override
  final double floor;
  @override
  final String? others;

  factory _$GcreateFloorDto([void Function(GcreateFloorDtoBuilder)? updates]) =>
      (new GcreateFloorDtoBuilder()..update(updates))._build();

  _$GcreateFloorDto._({required this.floor, this.others}) : super._() {
    BuiltValueNullFieldError.checkNotNull(floor, r'GcreateFloorDto', 'floor');
  }

  @override
  GcreateFloorDto rebuild(void Function(GcreateFloorDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateFloorDtoBuilder toBuilder() =>
      new GcreateFloorDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateFloorDto &&
        floor == other.floor &&
        others == other.others;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, others.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateFloorDto')
          ..add('floor', floor)
          ..add('others', others))
        .toString();
  }
}

class GcreateFloorDtoBuilder
    implements Builder<GcreateFloorDto, GcreateFloorDtoBuilder> {
  _$GcreateFloorDto? _$v;

  double? _floor;
  double? get floor => _$this._floor;
  set floor(double? floor) => _$this._floor = floor;

  String? _others;
  String? get others => _$this._others;
  set others(String? others) => _$this._others = others;

  GcreateFloorDtoBuilder();

  GcreateFloorDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floor = $v.floor;
      _others = $v.others;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateFloorDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateFloorDto;
  }

  @override
  void update(void Function(GcreateFloorDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateFloorDto build() => _build();

  _$GcreateFloorDto _build() {
    final _$result = _$v ??
        new _$GcreateFloorDto._(
            floor: BuiltValueNullFieldError.checkNotNull(
                floor, r'GcreateFloorDto', 'floor'),
            others: others);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
