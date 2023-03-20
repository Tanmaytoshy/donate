import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donor_record.g.dart';

abstract class DonorRecord implements Built<DonorRecord, DonorRecordBuilder> {
  static Serializer<DonorRecord> get serializer => _$donorRecordSerializer;

  @BuiltValueField(wireName: 'TypeofDonor')
  String? get typeofDonor;

  @BuiltValueField(wireName: 'Nameofmanager')
  String? get nameofmanager;

  @BuiltValueField(wireName: 'Emailid')
  String? get emailid;

  int? get contactnumber;

  @BuiltValueField(wireName: 'Address')
  String? get address;

  @BuiltValueField(wireName: 'Password')
  String? get password;

  String? get image;

  String? get city;

  String? get state;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DonorRecordBuilder builder) => builder
    ..typeofDonor = ''
    ..nameofmanager = ''
    ..emailid = ''
    ..contactnumber = 0
    ..address = ''
    ..password = ''
    ..image = ''
    ..city = ''
    ..state = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donor');

  static Stream<DonorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DonorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DonorRecord._();
  factory DonorRecord([void Function(DonorRecordBuilder) updates]) =
      _$DonorRecord;

  static DonorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDonorRecordData({
  String? typeofDonor,
  String? nameofmanager,
  String? emailid,
  int? contactnumber,
  String? address,
  String? password,
  String? image,
  String? city,
  String? state,
}) {
  final firestoreData = serializers.toFirestore(
    DonorRecord.serializer,
    DonorRecord(
      (d) => d
        ..typeofDonor = typeofDonor
        ..nameofmanager = nameofmanager
        ..emailid = emailid
        ..contactnumber = contactnumber
        ..address = address
        ..password = password
        ..image = image
        ..city = city
        ..state = state,
    ),
  );

  return firestoreData;
}
