// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventsRecord> _$eventsRecordSerializer =
    new _$EventsRecordSerializer();

class _$EventsRecordSerializer implements StructuredSerializer<EventsRecord> {
  @override
  final Iterable<Type> types = const [EventsRecord, _$EventsRecord];
  @override
  final String wireName = 'EventsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDesc;
    if (value != null) {
      result
        ..add('short_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullDesc;
    if (value != null) {
      result
        ..add('full_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postedon;
    if (value != null) {
      result
        ..add('postedon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.eventjoined;
    if (value != null) {
      result
        ..add('eventjoined')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EventsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_desc':
          result.shortDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_desc':
          result.fullDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postedon':
          result.postedon = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'eventjoined':
          result.eventjoined = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EventsRecord extends EventsRecord {
  @override
  final String? title;
  @override
  final String? shortDesc;
  @override
  final String? fullDesc;
  @override
  final DateTime? time;
  @override
  final String? city;
  @override
  final String? image;
  @override
  final DateTime? postedon;
  @override
  final DocumentReference<Object?>? user;
  @override
  final bool? eventjoined;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventsRecord([void Function(EventsRecordBuilder)? updates]) =>
      (new EventsRecordBuilder()..update(updates))._build();

  _$EventsRecord._(
      {this.title,
      this.shortDesc,
      this.fullDesc,
      this.time,
      this.city,
      this.image,
      this.postedon,
      this.user,
      this.eventjoined,
      this.ffRef})
      : super._();

  @override
  EventsRecord rebuild(void Function(EventsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsRecordBuilder toBuilder() => new EventsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsRecord &&
        title == other.title &&
        shortDesc == other.shortDesc &&
        fullDesc == other.fullDesc &&
        time == other.time &&
        city == other.city &&
        image == other.image &&
        postedon == other.postedon &&
        user == other.user &&
        eventjoined == other.eventjoined &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, title.hashCode),
                                        shortDesc.hashCode),
                                    fullDesc.hashCode),
                                time.hashCode),
                            city.hashCode),
                        image.hashCode),
                    postedon.hashCode),
                user.hashCode),
            eventjoined.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventsRecord')
          ..add('title', title)
          ..add('shortDesc', shortDesc)
          ..add('fullDesc', fullDesc)
          ..add('time', time)
          ..add('city', city)
          ..add('image', image)
          ..add('postedon', postedon)
          ..add('user', user)
          ..add('eventjoined', eventjoined)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventsRecordBuilder
    implements Builder<EventsRecord, EventsRecordBuilder> {
  _$EventsRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _shortDesc;
  String? get shortDesc => _$this._shortDesc;
  set shortDesc(String? shortDesc) => _$this._shortDesc = shortDesc;

  String? _fullDesc;
  String? get fullDesc => _$this._fullDesc;
  set fullDesc(String? fullDesc) => _$this._fullDesc = fullDesc;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _postedon;
  DateTime? get postedon => _$this._postedon;
  set postedon(DateTime? postedon) => _$this._postedon = postedon;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  bool? _eventjoined;
  bool? get eventjoined => _$this._eventjoined;
  set eventjoined(bool? eventjoined) => _$this._eventjoined = eventjoined;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventsRecordBuilder() {
    EventsRecord._initializeBuilder(this);
  }

  EventsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _shortDesc = $v.shortDesc;
      _fullDesc = $v.fullDesc;
      _time = $v.time;
      _city = $v.city;
      _image = $v.image;
      _postedon = $v.postedon;
      _user = $v.user;
      _eventjoined = $v.eventjoined;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsRecord;
  }

  @override
  void update(void Function(EventsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsRecord build() => _build();

  _$EventsRecord _build() {
    final _$result = _$v ??
        new _$EventsRecord._(
            title: title,
            shortDesc: shortDesc,
            fullDesc: fullDesc,
            time: time,
            city: city,
            image: image,
            postedon: postedon,
            user: user,
            eventjoined: eventjoined,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
