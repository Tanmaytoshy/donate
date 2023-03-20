import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ngo_record.g.dart';

abstract class NgoRecord implements Built<NgoRecord, NgoRecordBuilder> {
  static Serializer<NgoRecord> get serializer => _$ngoRecordSerializer;

  String? get nameoforganization;

  String? get nameofmanager;

  int? get conatctnumber;

  String? get emailid;

  String? get address;

  String? get password;

  String? get stateyourmission;

  String? get image;

  @BuiltValueField(wireName: 'Noofvolunteers')
  int? get noofvolunteers;

  @BuiltValueField(wireName: 'about_ngo')
  String? get aboutNgo;

  @BuiltValueField(wireName: 'helped_people')
  int? get helpedPeople;

  @BuiltValueField(wireName: 'ngo_city')
  String? get ngoCity;

  DocumentReference? get user;

  String? get ngoid;

  @BuiltValueField(wireName: 'TOPNGO')
  bool? get topngo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NgoRecordBuilder builder) => builder
    ..nameoforganization = ''
    ..nameofmanager = ''
    ..conatctnumber = 0
    ..emailid = ''
    ..address = ''
    ..password = ''
    ..stateyourmission = ''
    ..image = ''
    ..noofvolunteers = 0
    ..aboutNgo = ''
    ..helpedPeople = 0
    ..ngoCity = ''
    ..ngoid = ''
    ..topngo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NGO');

  static Stream<NgoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NgoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NgoRecord._();
  factory NgoRecord([void Function(NgoRecordBuilder) updates]) = _$NgoRecord;

  static NgoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNgoRecordData({
  String? nameoforganization,
  String? nameofmanager,
  int? conatctnumber,
  String? emailid,
  String? address,
  String? password,
  String? stateyourmission,
  String? image,
  int? noofvolunteers,
  String? aboutNgo,
  int? helpedPeople,
  String? ngoCity,
  DocumentReference? user,
  String? ngoid,
  bool? topngo,
}) {
  final firestoreData = serializers.toFirestore(
    NgoRecord.serializer,
    NgoRecord(
      (n) => n
        ..nameoforganization = nameoforganization
        ..nameofmanager = nameofmanager
        ..conatctnumber = conatctnumber
        ..emailid = emailid
        ..address = address
        ..password = password
        ..stateyourmission = stateyourmission
        ..image = image
        ..noofvolunteers = noofvolunteers
        ..aboutNgo = aboutNgo
        ..helpedPeople = helpedPeople
        ..ngoCity = ngoCity
        ..user = user
        ..ngoid = ngoid
        ..topngo = topngo,
    ),
  );

  return firestoreData;
}
