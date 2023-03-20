import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_res_info_record.g.dart';

abstract class FoodResInfoRecord
    implements Built<FoodResInfoRecord, FoodResInfoRecordBuilder> {
  static Serializer<FoodResInfoRecord> get serializer =>
      _$foodResInfoRecordSerializer;

  @BuiltValueField(wireName: 'restaurant_name')
  String? get restaurantName;

  @BuiltValueField(wireName: 'Meal_available_for')
  int? get mealAvailableFor;

  @BuiltValueField(wireName: 'Food_type')
  String? get foodType;

  @BuiltValueField(wireName: 'Pickup_time')
  DateTime? get pickupTime;

  @BuiltValueField(wireName: 'Food_cook_time')
  DateTime? get foodCookTime;

  @BuiltValueField(wireName: 'Food_expiry_time')
  DateTime? get foodExpiryTime;

  @BuiltValueField(wireName: 'Pickup_address')
  String? get pickupAddress;

  @BuiltValueField(wireName: 'Special_info')
  String? get specialInfo;

  @BuiltValueField(wireName: 'restaurant_city')
  String? get restaurantCity;

  @BuiltValueField(wireName: 'res_image')
  String? get resImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FoodResInfoRecordBuilder builder) => builder
    ..restaurantName = ''
    ..mealAvailableFor = 0
    ..foodType = ''
    ..pickupAddress = ''
    ..specialInfo = ''
    ..restaurantCity = ''
    ..resImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food_res_info');

  static Stream<FoodResInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoodResInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoodResInfoRecord._();
  factory FoodResInfoRecord([void Function(FoodResInfoRecordBuilder) updates]) =
      _$FoodResInfoRecord;

  static FoodResInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoodResInfoRecordData({
  String? restaurantName,
  int? mealAvailableFor,
  String? foodType,
  DateTime? pickupTime,
  DateTime? foodCookTime,
  DateTime? foodExpiryTime,
  String? pickupAddress,
  String? specialInfo,
  String? restaurantCity,
  String? resImage,
}) {
  final firestoreData = serializers.toFirestore(
    FoodResInfoRecord.serializer,
    FoodResInfoRecord(
      (f) => f
        ..restaurantName = restaurantName
        ..mealAvailableFor = mealAvailableFor
        ..foodType = foodType
        ..pickupTime = pickupTime
        ..foodCookTime = foodCookTime
        ..foodExpiryTime = foodExpiryTime
        ..pickupAddress = pickupAddress
        ..specialInfo = specialInfo
        ..restaurantCity = restaurantCity
        ..resImage = resImage,
    ),
  );

  return firestoreData;
}
