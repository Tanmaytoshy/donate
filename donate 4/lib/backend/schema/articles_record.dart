import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'articles_record.g.dart';

abstract class ArticlesRecord
    implements Built<ArticlesRecord, ArticlesRecordBuilder> {
  static Serializer<ArticlesRecord> get serializer =>
      _$articlesRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Article')
  String? get article;

  @BuiltValueField(wireName: 'posted_time')
  DateTime? get postedTime;

  @BuiltValueField(wireName: 'Short_desc')
  String? get shortDesc;

  @BuiltValueField(wireName: 'Written_by')
  String? get writtenBy;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ArticlesRecordBuilder builder) => builder
    ..title = ''
    ..article = ''
    ..shortDesc = ''
    ..writtenBy = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ArticlesRecord._();
  factory ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =
      _$ArticlesRecord;

  static ArticlesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createArticlesRecordData({
  String? title,
  String? article,
  DateTime? postedTime,
  String? shortDesc,
  String? writtenBy,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    ArticlesRecord.serializer,
    ArticlesRecord(
      (a) => a
        ..title = title
        ..article = article
        ..postedTime = postedTime
        ..shortDesc = shortDesc
        ..writtenBy = writtenBy
        ..image = image,
    ),
  );

  return firestoreData;
}
