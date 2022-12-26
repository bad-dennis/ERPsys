// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desserts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DessertsRecord> _$dessertsRecordSerializer =
    new _$DessertsRecordSerializer();

class _$DessertsRecordSerializer
    implements StructuredSerializer<DessertsRecord> {
  @override
  final Iterable<Type> types = const [DessertsRecord, _$DessertsRecord];
  @override
  final String wireName = 'DessertsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DessertsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dessertsName;
    if (value != null) {
      result
        ..add('DessertsName')
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
  DessertsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DessertsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'DessertsName':
          result.dessertsName = serializers.deserialize(value,
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

class _$DessertsRecord extends DessertsRecord {
  @override
  final String? dessertsName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DessertsRecord([void Function(DessertsRecordBuilder)? updates]) =>
      (new DessertsRecordBuilder()..update(updates))._build();

  _$DessertsRecord._({this.dessertsName, this.ffRef}) : super._();

  @override
  DessertsRecord rebuild(void Function(DessertsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DessertsRecordBuilder toBuilder() =>
      new DessertsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DessertsRecord &&
        dessertsName == other.dessertsName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dessertsName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DessertsRecord')
          ..add('dessertsName', dessertsName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DessertsRecordBuilder
    implements Builder<DessertsRecord, DessertsRecordBuilder> {
  _$DessertsRecord? _$v;

  String? _dessertsName;
  String? get dessertsName => _$this._dessertsName;
  set dessertsName(String? dessertsName) => _$this._dessertsName = dessertsName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DessertsRecordBuilder() {
    DessertsRecord._initializeBuilder(this);
  }

  DessertsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dessertsName = $v.dessertsName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DessertsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DessertsRecord;
  }

  @override
  void update(void Function(DessertsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DessertsRecord build() => _build();

  _$DessertsRecord _build() {
    final _$result =
        _$v ?? new _$DessertsRecord._(dessertsName: dessertsName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
