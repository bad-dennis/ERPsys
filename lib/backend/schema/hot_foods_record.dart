import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hot_foods_record.g.dart';

abstract class HotFoodsRecord
    implements Built<HotFoodsRecord, HotFoodsRecordBuilder> {
  static Serializer<HotFoodsRecord> get serializer =>
      _$hotFoodsRecordSerializer;

  @BuiltValueField(wireName: 'FoodsName')
  String? get foodsName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HotFoodsRecordBuilder builder) =>
      builder..foodsName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HotFoods');

  static Stream<HotFoodsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HotFoodsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HotFoodsRecord._();
  factory HotFoodsRecord([void Function(HotFoodsRecordBuilder) updates]) =
      _$HotFoodsRecord;

  static HotFoodsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHotFoodsRecordData({
  String? foodsName,
}) {
  final firestoreData = serializers.toFirestore(
    HotFoodsRecord.serializer,
    HotFoodsRecord(
      (h) => h..foodsName = foodsName,
    ),
  );

  return firestoreData;
}
