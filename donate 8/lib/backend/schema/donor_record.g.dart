// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donor_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonorRecord> _$donorRecordSerializer = new _$DonorRecordSerializer();

class _$DonorRecordSerializer implements StructuredSerializer<DonorRecord> {
  @override
  final Iterable<Type> types = const [DonorRecord, _$DonorRecord];
  @override
  final String wireName = 'DonorRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DonorRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeofDonor;
    if (value != null) {
      result
        ..add('TypeofDonor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameofmanager;
    if (value != null) {
      result
        ..add('Nameofmanager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailid;
    if (value != null) {
      result
        ..add('Emailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactnumber;
    if (value != null) {
      result
        ..add('contactnumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('Password')
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
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
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
  DonorRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonorRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TypeofDonor':
          result.typeofDonor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nameofmanager':
          result.nameofmanager = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Emailid':
          result.emailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactnumber':
          result.contactnumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$DonorRecord extends DonorRecord {
  @override
  final String? typeofDonor;
  @override
  final String? nameofmanager;
  @override
  final String? emailid;
  @override
  final int? contactnumber;
  @override
  final String? address;
  @override
  final String? password;
  @override
  final String? image;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DonorRecord([void Function(DonorRecordBuilder)? updates]) =>
      (new DonorRecordBuilder()..update(updates))._build();

  _$DonorRecord._(
      {this.typeofDonor,
      this.nameofmanager,
      this.emailid,
      this.contactnumber,
      this.address,
      this.password,
      this.image,
      this.city,
      this.state,
      this.user,
      this.ffRef})
      : super._();

  @override
  DonorRecord rebuild(void Function(DonorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonorRecordBuilder toBuilder() => new DonorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonorRecord &&
        typeofDonor == other.typeofDonor &&
        nameofmanager == other.nameofmanager &&
        emailid == other.emailid &&
        contactnumber == other.contactnumber &&
        address == other.address &&
        password == other.password &&
        image == other.image &&
        city == other.city &&
        state == other.state &&
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
                                    $jc(
                                        $jc($jc(0, typeofDonor.hashCode),
                                            nameofmanager.hashCode),
                                        emailid.hashCode),
                                    contactnumber.hashCode),
                                address.hashCode),
                            password.hashCode),
                        image.hashCode),
                    city.hashCode),
                state.hashCode),
            user.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonorRecord')
          ..add('typeofDonor', typeofDonor)
          ..add('nameofmanager', nameofmanager)
          ..add('emailid', emailid)
          ..add('contactnumber', contactnumber)
          ..add('address', address)
          ..add('password', password)
          ..add('image', image)
          ..add('city', city)
          ..add('state', state)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DonorRecordBuilder implements Builder<DonorRecord, DonorRecordBuilder> {
  _$DonorRecord? _$v;

  String? _typeofDonor;
  String? get typeofDonor => _$this._typeofDonor;
  set typeofDonor(String? typeofDonor) => _$this._typeofDonor = typeofDonor;

  String? _nameofmanager;
  String? get nameofmanager => _$this._nameofmanager;
  set nameofmanager(String? nameofmanager) =>
      _$this._nameofmanager = nameofmanager;

  String? _emailid;
  String? get emailid => _$this._emailid;
  set emailid(String? emailid) => _$this._emailid = emailid;

  int? _contactnumber;
  int? get contactnumber => _$this._contactnumber;
  set contactnumber(int? contactnumber) =>
      _$this._contactnumber = contactnumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DonorRecordBuilder() {
    DonorRecord._initializeBuilder(this);
  }

  DonorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeofDonor = $v.typeofDonor;
      _nameofmanager = $v.nameofmanager;
      _emailid = $v.emailid;
      _contactnumber = $v.contactnumber;
      _address = $v.address;
      _password = $v.password;
      _image = $v.image;
      _city = $v.city;
      _state = $v.state;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonorRecord;
  }

  @override
  void update(void Function(DonorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonorRecord build() => _build();

  _$DonorRecord _build() {
    final _$result = _$v ??
        new _$DonorRecord._(
            typeofDonor: typeofDonor,
            nameofmanager: nameofmanager,
            emailid: emailid,
            contactnumber: contactnumber,
            address: address,
            password: password,
            image: image,
            city: city,
            state: state,
            user: user,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
