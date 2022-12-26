// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_foods_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HotFoodsRecord> _$hotFoodsRecordSerializer =
    new _$HotFoodsRecordSerializer();

class _$HotFoodsRecordSerializer
    implements StructuredSerializer<HotFoodsRecord> {
  @override
  final Iterable<Type> types = const [HotFoodsRecord, _$HotFoodsRecord];
  @override
  final String wireName = 'HotFoodsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HotFoodsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.foodsName;
    if (value != null) {
      result
        ..add('FoodsName')
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
  HotFoodsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HotFoodsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'FoodsName':
          result.foodsName = serializers.deserialize(value,
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

class _$HotFoodsRecord extends HotFoodsRecord {
  @override
  final String? foodsName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HotFoodsRecord([void Function(HotFoodsRecordBuilder)? updates]) =>
      (new HotFoodsRecordBuilder()..update(updates))._build();

  _$HotFoodsRecord._({this.foodsName, this.ffRef}) : super._();

  @override
  HotFoodsRecord rebuild(void Function(HotFoodsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HotFoodsRecordBuilder toBuilder() =>
      new HotFoodsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HotFoodsRecord &&
        foodsName == other.foodsName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foodsName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HotFoodsRecord')
          ..add('foodsName', foodsName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HotFoodsRecordBuilder
    implements Builder<HotFoodsRecord, HotFoodsRecordBuilder> {
  _$HotFoodsRecord? _$v;

  String? _foodsName;
  String? get foodsName => _$this._foodsName;
  set foodsName(String? foodsName) => _$this._foodsName = foodsName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HotFoodsRecordBuilder() {
    HotFoodsRecord._initializeBuilder(this);
  }

  HotFoodsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foodsName = $v.foodsName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HotFoodsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HotFoodsRecord;
  }

  @override
  void update(void Function(HotFoodsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HotFoodsRecord build() => _build();

  _$HotFoodsRecord _build() {
    final _$result =
        _$v ?? new _$HotFoodsRecord._(foodsName: foodsName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
