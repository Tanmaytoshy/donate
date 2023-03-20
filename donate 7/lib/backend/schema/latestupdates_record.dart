import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'latestupdates_record.g.dart';

abstract class LatestupdatesRecord
    implements Built<LatestupdatesRecord, LatestupdatesRecordBuilder> {
  static Serializer<LatestupdatesRecord> get serializer =>
      _$latestupdatesRecordSerializer;

  String? get title;

  String? get image;

  String? get description;

  DateTime? get timestamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LatestupdatesRecordBuilder builder) => builder
    ..title = ''
    ..image = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('latestupdates');

  static Stream<LatestupdatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LatestupdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LatestupdatesRecord._();
  factory LatestupdatesRecord(
          [void Function(LatestupdatesRecordBuilder) updates]) =
      _$LatestupdatesRecord;

  static LatestupdatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLatestupdatesRecordData({
  String? title,
  String? image,
  String? description,
  DateTime? timestamp,
}) {
  final firestoreData = serializers.toFirestore(
    LatestupdatesRecord.serializer,
    LatestupdatesRecord(
      (l) => l
        ..title = title
        ..image = image
        ..description = description
        ..timestamp = timestamp,
    ),
  );

  return firestoreData;
}
