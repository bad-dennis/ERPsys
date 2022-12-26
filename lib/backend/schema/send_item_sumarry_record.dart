import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'send_item_sumarry_record.g.dart';

abstract class SendItemSumarryRecord
    implements Built<SendItemSumarryRecord, SendItemSumarryRecordBuilder> {
  static Serializer<SendItemSumarryRecord> get serializer =>
      _$sendItemSumarryRecordSerializer;

  @BuiltValueField(wireName: 'KuehName')
  String? get kuehName;

  @BuiltValueField(wireName: 'Shop1')
  int? get shop1;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'Shop2')
  int? get shop2;

  @BuiltValueField(wireName: 'Shop4')
  int? get shop4;

  @BuiltValueField(wireName: 'Shop5')
  int? get shop5;

  @BuiltValueField(wireName: 'Shop8')
  int? get shop8;

  @BuiltValueField(wireName: 'Shop10')
  int? get shop10;

  @BuiltValueField(wireName: 'Shop11')
  int? get shop11;

  @BuiltValueField(wireName: 'Shop12')
  int? get shop12;

  @BuiltValueField(wireName: 'Shop13')
  int? get shop13;

  @BuiltValueField(wireName: 'Shop14')
  int? get shop14;

  @BuiltValueField(wireName: 'Shop15')
  int? get shop15;

  @BuiltValueField(wireName: 'Delivery')
  String? get delivery;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SendItemSumarryRecordBuilder builder) =>
      builder
        ..kuehName = ''
        ..shop1 = 0
        ..shop2 = 0
        ..shop4 = 0
        ..shop5 = 0
        ..shop8 = 0
        ..shop10 = 0
        ..shop11 = 0
        ..shop12 = 0
        ..shop13 = 0
        ..shop14 = 0
        ..shop15 = 0
        ..delivery = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SendItemSumarry');

  static Stream<SendItemSumarryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SendItemSumarryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SendItemSumarryRecord._();
  factory SendItemSumarryRecord(
          [void Function(SendItemSumarryRecordBuilder) updates]) =
      _$SendItemSumarryRecord;

  static SendItemSumarryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSendItemSumarryRecordData({
  String? kuehName,
  int? shop1,
  DateTime? date,
  int? shop2,
  int? shop4,
  int? shop5,
  int? shop8,
  int? shop10,
  int? shop11,
  int? shop12,
  int? shop13,
  int? shop14,
  int? shop15,
  String? delivery,
}) {
  final firestoreData = serializers.toFirestore(
    SendItemSumarryRecord.serializer,
    SendItemSumarryRecord(
      (s) => s
        ..kuehName = kuehName
        ..shop1 = shop1
        ..date = date
        ..shop2 = shop2
        ..shop4 = shop4
        ..shop5 = shop5
        ..shop8 = shop8
        ..shop10 = shop10
        ..shop11 = shop11
        ..shop12 = shop12
        ..shop13 = shop13
        ..shop14 = shop14
        ..shop15 = shop15
        ..delivery = delivery,
    ),
  );

  return firestoreData;
}
