// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latestupdates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LatestupdatesRecord> _$latestupdatesRecordSerializer =
    new _$LatestupdatesRecordSerializer();

class _$LatestupdatesRecordSerializer
    implements StructuredSerializer<LatestupdatesRecord> {
  @override
  final Iterable<Type> types = const [
    LatestupdatesRecord,
    _$LatestupdatesRecord
  ];
  @override
  final String wireName = 'LatestupdatesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LatestupdatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  LatestupdatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LatestupdatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$LatestupdatesRecord extends LatestupdatesRecord {
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LatestupdatesRecord(
          [void Function(LatestupdatesRecordBuilder)? updates]) =>
      (new LatestupdatesRecordBuilder()..update(updates))._build();

  _$LatestupdatesRecord._(
      {this.title, this.image, this.description, this.timestamp, this.ffRef})
      : super._();

  @override
  LatestupdatesRecord rebuild(
          void Function(LatestupdatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LatestupdatesRecordBuilder toBuilder() =>
      new LatestupdatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LatestupdatesRecord &&
        title == other.title &&
        image == other.image &&
        description == other.description &&
        timestamp == other.timestamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), image.hashCode),
                description.hashCode),
            timestamp.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LatestupdatesRecord')
          ..add('title', title)
          ..add('image', image)
          ..add('description', description)
          ..add('timestamp', timestamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LatestupdatesRecordBuilder
    implements Builder<LatestupdatesRecord, LatestupdatesRecordBuilder> {
  _$LatestupdatesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LatestupdatesRecordBuilder() {
    LatestupdatesRecord._initializeBuilder(this);
  }

  LatestupdatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _image = $v.image;
      _description = $v.description;
      _timestamp = $v.timestamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LatestupdatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LatestupdatesRecord;
  }

  @override
  void update(void Function(LatestupdatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LatestupdatesRecord build() => _build();

  _$LatestupdatesRecord _build() {
    final _$result = _$v ??
        new _$LatestupdatesRecord._(
            title: title,
            image: image,
            description: description,
            timestamp: timestamp,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
