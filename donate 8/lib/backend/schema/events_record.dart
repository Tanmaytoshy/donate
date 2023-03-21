import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  String? get title;

  @BuiltValueField(wireName: 'short_desc')
  String? get shortDesc;

  @BuiltValueField(wireName: 'full_desc')
  String? get fullDesc;

  @BuiltValueField(wireName: 'Time')
  DateTime? get time;

  String? get city;

  String? get image;

  DateTime? get postedon;

  DocumentReference? get user;

  bool? get eventjoined;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..title = ''
    ..shortDesc = ''
    ..fullDesc = ''
    ..city = ''
    ..image = ''
    ..eventjoined = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventsRecordData({
  String? title,
  String? shortDesc,
  String? fullDesc,
  DateTime? time,
  String? city,
  String? image,
  DateTime? postedon,
  DocumentReference? user,
  bool? eventjoined,
}) {
  final firestoreData = serializers.toFirestore(
    EventsRecord.serializer,
    EventsRecord(
      (e) => e
        ..title = title
        ..shortDesc = shortDesc
        ..fullDesc = fullDesc
        ..time = time
        ..city = city
        ..image = image
        ..postedon = postedon
        ..user = user
        ..eventjoined = eventjoined,
    ),
  );

  return firestoreData;
}
