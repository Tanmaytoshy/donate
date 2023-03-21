// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticlesRecord> _$articlesRecordSerializer =
    new _$ArticlesRecordSerializer();

class _$ArticlesRecordSerializer
    implements StructuredSerializer<ArticlesRecord> {
  @override
  final Iterable<Type> types = const [ArticlesRecord, _$ArticlesRecord];
  @override
  final String wireName = 'ArticlesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArticlesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.article;
    if (value != null) {
      result
        ..add('Article')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postedTime;
    if (value != null) {
      result
        ..add('posted_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.shortDesc;
    if (value != null) {
      result
        ..add('Short_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.writtenBy;
    if (value != null) {
      result
        ..add('Written_by')
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
  ArticlesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Article':
          result.article = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'posted_time':
          result.postedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Short_desc':
          result.shortDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Written_by':
          result.writtenBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ArticlesRecord extends ArticlesRecord {
  @override
  final String? title;
  @override
  final String? article;
  @override
  final DateTime? postedTime;
  @override
  final String? shortDesc;
  @override
  final String? writtenBy;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ArticlesRecord([void Function(ArticlesRecordBuilder)? updates]) =>
      (new ArticlesRecordBuilder()..update(updates))._build();

  _$ArticlesRecord._(
      {this.title,
      this.article,
      this.postedTime,
      this.shortDesc,
      this.writtenBy,
      this.image,
      this.ffRef})
      : super._();

  @override
  ArticlesRecord rebuild(void Function(ArticlesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesRecordBuilder toBuilder() =>
      new ArticlesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticlesRecord &&
        title == other.title &&
        article == other.article &&
        postedTime == other.postedTime &&
        shortDesc == other.shortDesc &&
        writtenBy == other.writtenBy &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), article.hashCode),
                        postedTime.hashCode),
                    shortDesc.hashCode),
                writtenBy.hashCode),
            image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticlesRecord')
          ..add('title', title)
          ..add('article', article)
          ..add('postedTime', postedTime)
          ..add('shortDesc', shortDesc)
          ..add('writtenBy', writtenBy)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ArticlesRecordBuilder
    implements Builder<ArticlesRecord, ArticlesRecordBuilder> {
  _$ArticlesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _article;
  String? get article => _$this._article;
  set article(String? article) => _$this._article = article;

  DateTime? _postedTime;
  DateTime? get postedTime => _$this._postedTime;
  set postedTime(DateTime? postedTime) => _$this._postedTime = postedTime;

  String? _shortDesc;
  String? get shortDesc => _$this._shortDesc;
  set shortDesc(String? shortDesc) => _$this._shortDesc = shortDesc;

  String? _writtenBy;
  String? get writtenBy => _$this._writtenBy;
  set writtenBy(String? writtenBy) => _$this._writtenBy = writtenBy;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ArticlesRecordBuilder() {
    ArticlesRecord._initializeBuilder(this);
  }

  ArticlesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _article = $v.article;
      _postedTime = $v.postedTime;
      _shortDesc = $v.shortDesc;
      _writtenBy = $v.writtenBy;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticlesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticlesRecord;
  }

  @override
  void update(void Function(ArticlesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticlesRecord build() => _build();

  _$ArticlesRecord _build() {
    final _$result = _$v ??
        new _$ArticlesRecord._(
            title: title,
            article: article,
            postedTime: postedTime,
            shortDesc: shortDesc,
            writtenBy: writtenBy,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
