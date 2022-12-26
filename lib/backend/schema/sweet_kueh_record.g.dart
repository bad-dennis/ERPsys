// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sweet_kueh_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SweetKuehRecord> _$sweetKuehRecordSerializer =
    new _$SweetKuehRecordSerializer();

class _$SweetKuehRecordSerializer
    implements StructuredSerializer<SweetKuehRecord> {
  @override
  final Iterable<Type> types = const [SweetKuehRecord, _$SweetKuehRecord];
  @override
  final String wireName = 'SweetKuehRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SweetKuehRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.kuehName;
    if (value != null) {
      result
        ..add('KuehName')
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
  SweetKuehRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SweetKuehRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'KuehName':
          result.kuehName = serializers.deserialize(value,
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

class _$SweetKuehRecord extends SweetKuehRecord {
  @override
  final String? kuehName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SweetKuehRecord([void Function(SweetKuehRecordBuilder)? updates]) =>
      (new SweetKuehRecordBuilder()..update(updates))._build();

  _$SweetKuehRecord._({this.kuehName, this.ffRef}) : super._();

  @override
  SweetKuehRecord rebuild(void Function(SweetKuehRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SweetKuehRecordBuilder toBuilder() =>
      new SweetKuehRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SweetKuehRecord &&
        kuehName == other.kuehName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, kuehName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SweetKuehRecord')
          ..add('kuehName', kuehName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SweetKuehRecordBuilder
    implements Builder<SweetKuehRecord, SweetKuehRecordBuilder> {
  _$SweetKuehRecord? _$v;

  String? _kuehName;
  String? get kuehName => _$this._kuehName;
  set kuehName(String? kuehName) => _$this._kuehName = kuehName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SweetKuehRecordBuilder() {
    SweetKuehRecord._initializeBuilder(this);
  }

  SweetKuehRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kuehName = $v.kuehName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SweetKuehRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SweetKuehRecord;
  }

  @override
  void update(void Function(SweetKuehRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SweetKuehRecord build() => _build();

  _$SweetKuehRecord _build() {
    final _$result =
        _$v ?? new _$SweetKuehRecord._(kuehName: kuehName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
