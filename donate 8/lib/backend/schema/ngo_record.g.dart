// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ngo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NgoRecord> _$ngoRecordSerializer = new _$NgoRecordSerializer();

class _$NgoRecordSerializer implements StructuredSerializer<NgoRecord> {
  @override
  final Iterable<Type> types = const [NgoRecord, _$NgoRecord];
  @override
  final String wireName = 'NgoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NgoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameoforganization;
    if (value != null) {
      result
        ..add('nameoforganization')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameofmanager;
    if (value != null) {
      result
        ..add('nameofmanager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conatctnumber;
    if (value != null) {
      result
        ..add('conatctnumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.emailid;
    if (value != null) {
      result
        ..add('emailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateyourmission;
    if (value != null) {
      result
        ..add('stateyourmission')
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
    value = object.noofvolunteers;
    if (value != null) {
      result
        ..add('Noofvolunteers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aboutNgo;
    if (value != null) {
      result
        ..add('about_ngo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.helpedPeople;
    if (value != null) {
      result
        ..add('helped_people')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ngoCity;
    if (value != null) {
      result
        ..add('ngo_city')
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
    value = object.ngoid;
    if (value != null) {
      result
        ..add('ngoid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topngo;
    if (value != null) {
      result
        ..add('TOPNGO')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  NgoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NgoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nameoforganization':
          result.nameoforganization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nameofmanager':
          result.nameofmanager = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'conatctnumber':
          result.conatctnumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'emailid':
          result.emailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stateyourmission':
          result.stateyourmission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Noofvolunteers':
          result.noofvolunteers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'about_ngo':
          result.aboutNgo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'helped_people':
          result.helpedPeople = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ngo_city':
          result.ngoCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ngoid':
          result.ngoid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TOPNGO':
          result.topngo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$NgoRecord extends NgoRecord {
  @override
  final String? nameoforganization;
  @override
  final String? nameofmanager;
  @override
  final int? conatctnumber;
  @override
  final String? emailid;
  @override
  final String? address;
  @override
  final String? password;
  @override
  final String? stateyourmission;
  @override
  final String? image;
  @override
  final int? noofvolunteers;
  @override
  final String? aboutNgo;
  @override
  final int? helpedPeople;
  @override
  final String? ngoCity;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? ngoid;
  @override
  final bool? topngo;
  @override
  final BuiltList<DocumentReference<Object?>>? members;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NgoRecord([void Function(NgoRecordBuilder)? updates]) =>
      (new NgoRecordBuilder()..update(updates))._build();

  _$NgoRecord._(
      {this.nameoforganization,
      this.nameofmanager,
      this.conatctnumber,
      this.emailid,
      this.address,
      this.password,
      this.stateyourmission,
      this.image,
      this.noofvolunteers,
      this.aboutNgo,
      this.helpedPeople,
      this.ngoCity,
      this.user,
      this.ngoid,
      this.topngo,
      this.members,
      this.ffRef})
      : super._();

  @override
  NgoRecord rebuild(void Function(NgoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NgoRecordBuilder toBuilder() => new NgoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NgoRecord &&
        nameoforganization == other.nameoforganization &&
        nameofmanager == other.nameofmanager &&
        conatctnumber == other.conatctnumber &&
        emailid == other.emailid &&
        address == other.address &&
        password == other.password &&
        stateyourmission == other.stateyourmission &&
        image == other.image &&
        noofvolunteers == other.noofvolunteers &&
        aboutNgo == other.aboutNgo &&
        helpedPeople == other.helpedPeople &&
        ngoCity == other.ngoCity &&
        user == other.user &&
        ngoid == other.ngoid &&
        topngo == other.topngo &&
        members == other.members &&
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
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        nameoforganization
                                                                            .hashCode),
                                                                    nameofmanager
                                                                        .hashCode),
                                                                conatctnumber
                                                                    .hashCode),
                                                            emailid.hashCode),
                                                        address.hashCode),
                                                    password.hashCode),
                                                stateyourmission.hashCode),
                                            image.hashCode),
                                        noofvolunteers.hashCode),
                                    aboutNgo.hashCode),
                                helpedPeople.hashCode),
                            ngoCity.hashCode),
                        user.hashCode),
                    ngoid.hashCode),
                topngo.hashCode),
            members.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NgoRecord')
          ..add('nameoforganization', nameoforganization)
          ..add('nameofmanager', nameofmanager)
          ..add('conatctnumber', conatctnumber)
          ..add('emailid', emailid)
          ..add('address', address)
          ..add('password', password)
          ..add('stateyourmission', stateyourmission)
          ..add('image', image)
          ..add('noofvolunteers', noofvolunteers)
          ..add('aboutNgo', aboutNgo)
          ..add('helpedPeople', helpedPeople)
          ..add('ngoCity', ngoCity)
          ..add('user', user)
          ..add('ngoid', ngoid)
          ..add('topngo', topngo)
          ..add('members', members)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NgoRecordBuilder implements Builder<NgoRecord, NgoRecordBuilder> {
  _$NgoRecord? _$v;

  String? _nameoforganization;
  String? get nameoforganization => _$this._nameoforganization;
  set nameoforganization(String? nameoforganization) =>
      _$this._nameoforganization = nameoforganization;

  String? _nameofmanager;
  String? get nameofmanager => _$this._nameofmanager;
  set nameofmanager(String? nameofmanager) =>
      _$this._nameofmanager = nameofmanager;

  int? _conatctnumber;
  int? get conatctnumber => _$this._conatctnumber;
  set conatctnumber(int? conatctnumber) =>
      _$this._conatctnumber = conatctnumber;

  String? _emailid;
  String? get emailid => _$this._emailid;
  set emailid(String? emailid) => _$this._emailid = emailid;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _stateyourmission;
  String? get stateyourmission => _$this._stateyourmission;
  set stateyourmission(String? stateyourmission) =>
      _$this._stateyourmission = stateyourmission;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _noofvolunteers;
  int? get noofvolunteers => _$this._noofvolunteers;
  set noofvolunteers(int? noofvolunteers) =>
      _$this._noofvolunteers = noofvolunteers;

  String? _aboutNgo;
  String? get aboutNgo => _$this._aboutNgo;
  set aboutNgo(String? aboutNgo) => _$this._aboutNgo = aboutNgo;

  int? _helpedPeople;
  int? get helpedPeople => _$this._helpedPeople;
  set helpedPeople(int? helpedPeople) => _$this._helpedPeople = helpedPeople;

  String? _ngoCity;
  String? get ngoCity => _$this._ngoCity;
  set ngoCity(String? ngoCity) => _$this._ngoCity = ngoCity;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _ngoid;
  String? get ngoid => _$this._ngoid;
  set ngoid(String? ngoid) => _$this._ngoid = ngoid;

  bool? _topngo;
  bool? get topngo => _$this._topngo;
  set topngo(bool? topngo) => _$this._topngo = topngo;

  ListBuilder<DocumentReference<Object?>>? _members;
  ListBuilder<DocumentReference<Object?>> get members =>
      _$this._members ??= new ListBuilder<DocumentReference<Object?>>();
  set members(ListBuilder<DocumentReference<Object?>>? members) =>
      _$this._members = members;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NgoRecordBuilder() {
    NgoRecord._initializeBuilder(this);
  }

  NgoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameoforganization = $v.nameoforganization;
      _nameofmanager = $v.nameofmanager;
      _conatctnumber = $v.conatctnumber;
      _emailid = $v.emailid;
      _address = $v.address;
      _password = $v.password;
      _stateyourmission = $v.stateyourmission;
      _image = $v.image;
      _noofvolunteers = $v.noofvolunteers;
      _aboutNgo = $v.aboutNgo;
      _helpedPeople = $v.helpedPeople;
      _ngoCity = $v.ngoCity;
      _user = $v.user;
      _ngoid = $v.ngoid;
      _topngo = $v.topngo;
      _members = $v.members?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NgoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NgoRecord;
  }

  @override
  void update(void Function(NgoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NgoRecord build() => _build();

  _$NgoRecord _build() {
    _$NgoRecord _$result;
    try {
      _$result = _$v ??
          new _$NgoRecord._(
              nameoforganization: nameoforganization,
              nameofmanager: nameofmanager,
              conatctnumber: conatctnumber,
              emailid: emailid,
              address: address,
              password: password,
              stateyourmission: stateyourmission,
              image: image,
              noofvolunteers: noofvolunteers,
              aboutNgo: aboutNgo,
              helpedPeople: helpedPeople,
              ngoCity: ngoCity,
              user: user,
              ngoid: ngoid,
              topngo: topngo,
              members: _members?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NgoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
