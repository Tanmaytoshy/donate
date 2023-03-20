import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'volunteer_record.g.dart';

abstract class VolunteerRecord
    implements Built<VolunteerRecord, VolunteerRecordBuilder> {
  static Serializer<VolunteerRecord> get serializer =>
      _$volunteerRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  int? get phonenumber;

  String? get emailid;

  String? get city;

  int? get pincode;

  String? get password;

  String? get image;

  DateTime? get dateofbirth;

  DocumentReference? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VolunteerRecordBuilder builder) => builder
    ..name = ''
    ..phonenumber = 0
    ..emailid = ''
    ..city = ''
    ..pincode = 0
    ..password = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Volunteer');

  static Stream<VolunteerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VolunteerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VolunteerRecord._();
  factory VolunteerRecord([void Function(VolunteerRecordBuilder) updates]) =
      _$VolunteerRecord;

  static VolunteerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVolunteerRecordData({
  String? name,
  int? phonenumber,
  String? emailid,
  String? city,
  int? pincode,
  String? password,
  String? image,
  DateTime? dateofbirth,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    VolunteerRecord.serializer,
    VolunteerRecord(
      (v) => v
        ..name = name
        ..phonenumber = phonenumber
        ..emailid = emailid
        ..city = city
        ..pincode = pincode
        ..password = password
        ..image = image
        ..dateofbirth = dateofbirth
        ..user = user,
    ),
  );

  return firestoreData;
}
