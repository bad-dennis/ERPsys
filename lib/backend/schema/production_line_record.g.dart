// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_line_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductionLineRecord> _$productionLineRecordSerializer =
    new _$ProductionLineRecordSerializer();

class _$ProductionLineRecordSerializer
    implements StructuredSerializer<ProductionLineRecord> {
  @override
  final Iterable<Type> types = const [
    ProductionLineRecord,
    _$ProductionLineRecord
  ];
  @override
  final String wireName = 'ProductionLineRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductionLineRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.venueName;
    if (value != null) {
      result
        ..add('VenueName')
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
  ProductionLineRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionLineRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'VenueName':
          result.venueName = serializers.deserialize(value,
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

class _$ProductionLineRecord extends ProductionLineRecord {
  @override
  final String? venueName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductionLineRecord(
          [void Function(ProductionLineRecordBuilder)? updates]) =>
      (new ProductionLineRecordBuilder()..update(updates))._build();

  _$ProductionLineRecord._({this.venueName, this.ffRef}) : super._();

  @override
  ProductionLineRecord rebuild(
          void Function(ProductionLineRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionLineRecordBuilder toBuilder() =>
      new ProductionLineRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionLineRecord &&
        venueName == other.venueName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, venueName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductionLineRecord')
          ..add('venueName', venueName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductionLineRecordBuilder
    implements Builder<ProductionLineRecord, ProductionLineRecordBuilder> {
  _$ProductionLineRecord? _$v;

  String? _venueName;
  String? get venueName => _$this._venueName;
  set venueName(String? venueName) => _$this._venueName = venueName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductionLineRecordBuilder() {
    ProductionLineRecord._initializeBuilder(this);
  }

  ProductionLineRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _venueName = $v.venueName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionLineRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductionLineRecord;
  }

  @override
  void update(void Function(ProductionLineRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductionLineRecord build() => _build();

  _$ProductionLineRecord _build() {
    final _$result =
        _$v ?? new _$ProductionLineRecord._(venueName: venueName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
