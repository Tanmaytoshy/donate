// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volunteer_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VolunteerRecord> _$volunteerRecordSerializer =
    new _$VolunteerRecordSerializer();

class _$VolunteerRecordSerializer
    implements StructuredSerializer<VolunteerRecord> {
  @override
  final Iterable<Type> types = const [VolunteerRecord, _$VolunteerRecord];
  @override
  final String wireName = 'VolunteerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VolunteerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phonenumber;
    if (value != null) {
      result
        ..add('phonenumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.emailid;
    if (value != null) {
      result
        ..add('emailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
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
    value = object.dateofbirth;
    if (value != null) {
      result
        ..add('dateofbirth')
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
  VolunteerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VolunteerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phonenumber':
          result.phonenumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'emailid':
          result.emailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateofbirth':
          result.dateofbirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$VolunteerRecord extends VolunteerRecord {
  @override
  final String? name;
  @override
  final int? phonenumber;
  @override
  final String? emailid;
  @override
  final String? city;
  @override
  final int? pincode;
  @override
  final String? password;
  @override
  final String? image;
  @override
  final DateTime? dateofbirth;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VolunteerRecord([void Function(VolunteerRecordBuilder)? updates]) =>
      (new VolunteerRecordBuilder()..update(updates))._build();

  _$VolunteerRecord._(
      {this.name,
      this.phonenumber,
      this.emailid,
      this.city,
      this.pincode,
      this.password,
      this.image,
      this.dateofbirth,
      this.user,
      this.ffRef})
      : super._();

  @override
  VolunteerRecord rebuild(void Function(VolunteerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolunteerRecordBuilder toBuilder() =>
      new VolunteerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolunteerRecord &&
        name == other.name &&
        phonenumber == other.phonenumber &&
        emailid == other.emailid &&
        city == other.city &&
        pincode == other.pincode &&
        password == other.password &&
        image == other.image &&
        dateofbirth == other.dateofbirth &&
        user == other.user &&
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
                                    $jc($jc(0, name.hashCode),
                                        phonenumber.hashCode),
                                    emailid.hashCode),
                                city.hashCode),
                            pincode.hashCode),
                        password.hashCode),
                    image.hashCode),
                dateofbirth.hashCode),
            user.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VolunteerRecord')
          ..add('name', name)
          ..add('phonenumber', phonenumber)
          ..add('emailid', emailid)
          ..add('city', city)
          ..add('pincode', pincode)
          ..add('password', password)
          ..add('image', image)
          ..add('dateofbirth', dateofbirth)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VolunteerRecordBuilder
    implements Builder<VolunteerRecord, VolunteerRecordBuilder> {
  _$VolunteerRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phonenumber;
  int? get phonenumber => _$this._phonenumber;
  set phonenumber(int? phonenumber) => _$this._phonenumber = phonenumber;

  String? _emailid;
  String? get emailid => _$this._emailid;
  set emailid(String? emailid) => _$this._emailid = emailid;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _pincode;
  int? get pincode => _$this._pincode;
  set pincode(int? pincode) => _$this._pincode = pincode;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _dateofbirth;
  DateTime? get dateofbirth => _$this._dateofbirth;
  set dateofbirth(DateTime? dateofbirth) => _$this._dateofbirth = dateofbirth;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VolunteerRecordBuilder() {
    VolunteerRecord._initializeBuilder(this);
  }

  VolunteerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phonenumber = $v.phonenumber;
      _emailid = $v.emailid;
      _city = $v.city;
      _pincode = $v.pincode;
      _password = $v.password;
      _image = $v.image;
      _dateofbirth = $v.dateofbirth;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolunteerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolunteerRecord;
  }

  @override
  void update(void Function(VolunteerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolunteerRecord build() => _build();

  _$VolunteerRecord _build() {
    final _$result = _$v ??
        new _$VolunteerRecord._(
            name: name,
            phonenumber: phonenumber,
            emailid: emailid,
            city: city,
            pincode: pincode,
            password: password,
            image: image,
            dateofbirth: dateofbirth,
            user: user,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
