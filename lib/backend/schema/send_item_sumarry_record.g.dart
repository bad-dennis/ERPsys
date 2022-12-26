// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_item_sumarry_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SendItemSumarryRecord> _$sendItemSumarryRecordSerializer =
    new _$SendItemSumarryRecordSerializer();

class _$SendItemSumarryRecordSerializer
    implements StructuredSerializer<SendItemSumarryRecord> {
  @override
  final Iterable<Type> types = const [
    SendItemSumarryRecord,
    _$SendItemSumarryRecord
  ];
  @override
  final String wireName = 'SendItemSumarryRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SendItemSumarryRecord object,
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
    value = object.shop1;
    if (value != null) {
      result
        ..add('Shop1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.shop2;
    if (value != null) {
      result
        ..add('Shop2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop4;
    if (value != null) {
      result
        ..add('Shop4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop5;
    if (value != null) {
      result
        ..add('Shop5')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop8;
    if (value != null) {
      result
        ..add('Shop8')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop10;
    if (value != null) {
      result
        ..add('Shop10')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop11;
    if (value != null) {
      result
        ..add('Shop11')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop12;
    if (value != null) {
      result
        ..add('Shop12')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop13;
    if (value != null) {
      result
        ..add('Shop13')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop14;
    if (value != null) {
      result
        ..add('Shop14')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shop15;
    if (value != null) {
      result
        ..add('Shop15')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('Delivery')
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
  SendItemSumarryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SendItemSumarryRecordBuilder();

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
        case 'Shop1':
          result.shop1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Shop2':
          result.shop2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop4':
          result.shop4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop5':
          result.shop5 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop8':
          result.shop8 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop10':
          result.shop10 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop11':
          result.shop11 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop12':
          result.shop12 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop13':
          result.shop13 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop14':
          result.shop14 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Shop15':
          result.shop15 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Delivery':
          result.delivery = serializers.deserialize(value,
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

class _$SendItemSumarryRecord extends SendItemSumarryRecord {
  @override
  final String? kuehName;
  @override
  final int? shop1;
  @override
  final DateTime? date;
  @override
  final int? shop2;
  @override
  final int? shop4;
  @override
  final int? shop5;
  @override
  final int? shop8;
  @override
  final int? shop10;
  @override
  final int? shop11;
  @override
  final int? shop12;
  @override
  final int? shop13;
  @override
  final int? shop14;
  @override
  final int? shop15;
  @override
  final String? delivery;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SendItemSumarryRecord(
          [void Function(SendItemSumarryRecordBuilder)? updates]) =>
      (new SendItemSumarryRecordBuilder()..update(updates))._build();

  _$SendItemSumarryRecord._(
      {this.kuehName,
      this.shop1,
      this.date,
      this.shop2,
      this.shop4,
      this.shop5,
      this.shop8,
      this.shop10,
      this.shop11,
      this.shop12,
      this.shop13,
      this.shop14,
      this.shop15,
      this.delivery,
      this.ffRef})
      : super._();

  @override
  SendItemSumarryRecord rebuild(
          void Function(SendItemSumarryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendItemSumarryRecordBuilder toBuilder() =>
      new SendItemSumarryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendItemSumarryRecord &&
        kuehName == other.kuehName &&
        shop1 == other.shop1 &&
        date == other.date &&
        shop2 == other.shop2 &&
        shop4 == other.shop4 &&
        shop5 == other.shop5 &&
        shop8 == other.shop8 &&
        shop10 == other.shop10 &&
        shop11 == other.shop11 &&
        shop12 == other.shop12 &&
        shop13 == other.shop13 &&
        shop14 == other.shop14 &&
        shop15 == other.shop15 &&
        delivery == other.delivery &&
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
                                                                0,
                                                                kuehName
                                                                    .hashCode),
                                                            shop1.hashCode),
                                                        date.hashCode),
                                                    shop2.hashCode),
                                                shop4.hashCode),
                                            shop5.hashCode),
                                        shop8.hashCode),
                                    shop10.hashCode),
                                shop11.hashCode),
                            shop12.hashCode),
                        shop13.hashCode),
                    shop14.hashCode),
                shop15.hashCode),
            delivery.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendItemSumarryRecord')
          ..add('kuehName', kuehName)
          ..add('shop1', shop1)
          ..add('date', date)
          ..add('shop2', shop2)
          ..add('shop4', shop4)
          ..add('shop5', shop5)
          ..add('shop8', shop8)
          ..add('shop10', shop10)
          ..add('shop11', shop11)
          ..add('shop12', shop12)
          ..add('shop13', shop13)
          ..add('shop14', shop14)
          ..add('shop15', shop15)
          ..add('delivery', delivery)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SendItemSumarryRecordBuilder
    implements Builder<SendItemSumarryRecord, SendItemSumarryRecordBuilder> {
  _$SendItemSumarryRecord? _$v;

  String? _kuehName;
  String? get kuehName => _$this._kuehName;
  set kuehName(String? kuehName) => _$this._kuehName = kuehName;

  int? _shop1;
  int? get shop1 => _$this._shop1;
  set shop1(int? shop1) => _$this._shop1 = shop1;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _shop2;
  int? get shop2 => _$this._shop2;
  set shop2(int? shop2) => _$this._shop2 = shop2;

  int? _shop4;
  int? get shop4 => _$this._shop4;
  set shop4(int? shop4) => _$this._shop4 = shop4;

  int? _shop5;
  int? get shop5 => _$this._shop5;
  set shop5(int? shop5) => _$this._shop5 = shop5;

  int? _shop8;
  int? get shop8 => _$this._shop8;
  set shop8(int? shop8) => _$this._shop8 = shop8;

  int? _shop10;
  int? get shop10 => _$this._shop10;
  set shop10(int? shop10) => _$this._shop10 = shop10;

  int? _shop11;
  int? get shop11 => _$this._shop11;
  set shop11(int? shop11) => _$this._shop11 = shop11;

  int? _shop12;
  int? get shop12 => _$this._shop12;
  set shop12(int? shop12) => _$this._shop12 = shop12;

  int? _shop13;
  int? get shop13 => _$this._shop13;
  set shop13(int? shop13) => _$this._shop13 = shop13;

  int? _shop14;
  int? get shop14 => _$this._shop14;
  set shop14(int? shop14) => _$this._shop14 = shop14;

  int? _shop15;
  int? get shop15 => _$this._shop15;
  set shop15(int? shop15) => _$this._shop15 = shop15;

  String? _delivery;
  String? get delivery => _$this._delivery;
  set delivery(String? delivery) => _$this._delivery = delivery;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SendItemSumarryRecordBuilder() {
    SendItemSumarryRecord._initializeBuilder(this);
  }

  SendItemSumarryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kuehName = $v.kuehName;
      _shop1 = $v.shop1;
      _date = $v.date;
      _shop2 = $v.shop2;
      _shop4 = $v.shop4;
      _shop5 = $v.shop5;
      _shop8 = $v.shop8;
      _shop10 = $v.shop10;
      _shop11 = $v.shop11;
      _shop12 = $v.shop12;
      _shop13 = $v.shop13;
      _shop14 = $v.shop14;
      _shop15 = $v.shop15;
      _delivery = $v.delivery;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendItemSumarryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendItemSumarryRecord;
  }

  @override
  void update(void Function(SendItemSumarryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendItemSumarryRecord build() => _build();

  _$SendItemSumarryRecord _build() {
    final _$result = _$v ??
        new _$SendItemSumarryRecord._(
            kuehName: kuehName,
            shop1: shop1,
            date: date,
            shop2: shop2,
            shop4: shop4,
            shop5: shop5,
            shop8: shop8,
            shop10: shop10,
            shop11: shop11,
            shop12: shop12,
            shop13: shop13,
            shop14: shop14,
            shop15: shop15,
            delivery: delivery,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
