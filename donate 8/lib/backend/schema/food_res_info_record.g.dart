// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_res_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodResInfoRecord> _$foodResInfoRecordSerializer =
    new _$FoodResInfoRecordSerializer();

class _$FoodResInfoRecordSerializer
    implements StructuredSerializer<FoodResInfoRecord> {
  @override
  final Iterable<Type> types = const [FoodResInfoRecord, _$FoodResInfoRecord];
  @override
  final String wireName = 'FoodResInfoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoodResInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.restaurantName;
    if (value != null) {
      result
        ..add('restaurant_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mealAvailableFor;
    if (value != null) {
      result
        ..add('Meal_available_for')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.foodType;
    if (value != null) {
      result
        ..add('Food_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pickupTime;
    if (value != null) {
      result
        ..add('Pickup_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.foodCookTime;
    if (value != null) {
      result
        ..add('Food_cook_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.foodExpiryTime;
    if (value != null) {
      result
        ..add('Food_expiry_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pickupAddress;
    if (value != null) {
      result
        ..add('Pickup_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specialInfo;
    if (value != null) {
      result
        ..add('Special_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restaurantCity;
    if (value != null) {
      result
        ..add('restaurant_city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resImage;
    if (value != null) {
      result
        ..add('res_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.orderPicked;
    if (value != null) {
      result
        ..add('order_picked')
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
  FoodResInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodResInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'restaurant_name':
          result.restaurantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Meal_available_for':
          result.mealAvailableFor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Food_type':
          result.foodType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Pickup_time':
          result.pickupTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Food_cook_time':
          result.foodCookTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Food_expiry_time':
          result.foodExpiryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Pickup_address':
          result.pickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Special_info':
          result.specialInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restaurant_city':
          result.restaurantCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'res_image':
          result.resImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'order_picked':
          result.orderPicked = serializers.deserialize(value,
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

class _$FoodResInfoRecord extends FoodResInfoRecord {
  @override
  final String? restaurantName;
  @override
  final int? mealAvailableFor;
  @override
  final String? foodType;
  @override
  final DateTime? pickupTime;
  @override
  final DateTime? foodCookTime;
  @override
  final DateTime? foodExpiryTime;
  @override
  final String? pickupAddress;
  @override
  final String? specialInfo;
  @override
  final String? restaurantCity;
  @override
  final String? resImage;
  @override
  final DocumentReference<Object?>? user;
  @override
  final bool? orderPicked;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FoodResInfoRecord(
          [void Function(FoodResInfoRecordBuilder)? updates]) =>
      (new FoodResInfoRecordBuilder()..update(updates))._build();

  _$FoodResInfoRecord._(
      {this.restaurantName,
      this.mealAvailableFor,
      this.foodType,
      this.pickupTime,
      this.foodCookTime,
      this.foodExpiryTime,
      this.pickupAddress,
      this.specialInfo,
      this.restaurantCity,
      this.resImage,
      this.user,
      this.orderPicked,
      this.ffRef})
      : super._();

  @override
  FoodResInfoRecord rebuild(void Function(FoodResInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodResInfoRecordBuilder toBuilder() =>
      new FoodResInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodResInfoRecord &&
        restaurantName == other.restaurantName &&
        mealAvailableFor == other.mealAvailableFor &&
        foodType == other.foodType &&
        pickupTime == other.pickupTime &&
        foodCookTime == other.foodCookTime &&
        foodExpiryTime == other.foodExpiryTime &&
        pickupAddress == other.pickupAddress &&
        specialInfo == other.specialInfo &&
        restaurantCity == other.restaurantCity &&
        resImage == other.resImage &&
        user == other.user &&
        orderPicked == other.orderPicked &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        0,
                                                        restaurantName
                                                            .hashCode),
                                                    mealAvailableFor.hashCode),
                                                foodType.hashCode),
                                            pickupTime.hashCode),
                                        foodCookTime.hashCode),
                                    foodExpiryTime.hashCode),
                                pickupAddress.hashCode),
                            specialInfo.hashCode),
                        restaurantCity.hashCode),
                    resImage.hashCode),
                user.hashCode),
            orderPicked.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodResInfoRecord')
          ..add('restaurantName', restaurantName)
          ..add('mealAvailableFor', mealAvailableFor)
          ..add('foodType', foodType)
          ..add('pickupTime', pickupTime)
          ..add('foodCookTime', foodCookTime)
          ..add('foodExpiryTime', foodExpiryTime)
          ..add('pickupAddress', pickupAddress)
          ..add('specialInfo', specialInfo)
          ..add('restaurantCity', restaurantCity)
          ..add('resImage', resImage)
          ..add('user', user)
          ..add('orderPicked', orderPicked)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FoodResInfoRecordBuilder
    implements Builder<FoodResInfoRecord, FoodResInfoRecordBuilder> {
  _$FoodResInfoRecord? _$v;

  String? _restaurantName;
  String? get restaurantName => _$this._restaurantName;
  set restaurantName(String? restaurantName) =>
      _$this._restaurantName = restaurantName;

  int? _mealAvailableFor;
  int? get mealAvailableFor => _$this._mealAvailableFor;
  set mealAvailableFor(int? mealAvailableFor) =>
      _$this._mealAvailableFor = mealAvailableFor;

  String? _foodType;
  String? get foodType => _$this._foodType;
  set foodType(String? foodType) => _$this._foodType = foodType;

  DateTime? _pickupTime;
  DateTime? get pickupTime => _$this._pickupTime;
  set pickupTime(DateTime? pickupTime) => _$this._pickupTime = pickupTime;

  DateTime? _foodCookTime;
  DateTime? get foodCookTime => _$this._foodCookTime;
  set foodCookTime(DateTime? foodCookTime) =>
      _$this._foodCookTime = foodCookTime;

  DateTime? _foodExpiryTime;
  DateTime? get foodExpiryTime => _$this._foodExpiryTime;
  set foodExpiryTime(DateTime? foodExpiryTime) =>
      _$this._foodExpiryTime = foodExpiryTime;

  String? _pickupAddress;
  String? get pickupAddress => _$this._pickupAddress;
  set pickupAddress(String? pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  String? _specialInfo;
  String? get specialInfo => _$this._specialInfo;
  set specialInfo(String? specialInfo) => _$this._specialInfo = specialInfo;

  String? _restaurantCity;
  String? get restaurantCity => _$this._restaurantCity;
  set restaurantCity(String? restaurantCity) =>
      _$this._restaurantCity = restaurantCity;

  String? _resImage;
  String? get resImage => _$this._resImage;
  set resImage(String? resImage) => _$this._resImage = resImage;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  bool? _orderPicked;
  bool? get orderPicked => _$this._orderPicked;
  set orderPicked(bool? orderPicked) => _$this._orderPicked = orderPicked;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FoodResInfoRecordBuilder() {
    FoodResInfoRecord._initializeBuilder(this);
  }

  FoodResInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantName = $v.restaurantName;
      _mealAvailableFor = $v.mealAvailableFor;
      _foodType = $v.foodType;
      _pickupTime = $v.pickupTime;
      _foodCookTime = $v.foodCookTime;
      _foodExpiryTime = $v.foodExpiryTime;
      _pickupAddress = $v.pickupAddress;
      _specialInfo = $v.specialInfo;
      _restaurantCity = $v.restaurantCity;
      _resImage = $v.resImage;
      _user = $v.user;
      _orderPicked = $v.orderPicked;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodResInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodResInfoRecord;
  }

  @override
  void update(void Function(FoodResInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodResInfoRecord build() => _build();

  _$FoodResInfoRecord _build() {
    final _$result = _$v ??
        new _$FoodResInfoRecord._(
            restaurantName: restaurantName,
            mealAvailableFor: mealAvailableFor,
            foodType: foodType,
            pickupTime: pickupTime,
            foodCookTime: foodCookTime,
            foodExpiryTime: foodExpiryTime,
            pickupAddress: pickupAddress,
            specialInfo: specialInfo,
            restaurantCity: restaurantCity,
            resImage: resImage,
            user: user,
            orderPicked: orderPicked,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
