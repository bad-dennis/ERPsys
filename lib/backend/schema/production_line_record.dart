import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'production_line_record.g.dart';

abstract class ProductionLineRecord
    implements Built<ProductionLineRecord, ProductionLineRecordBuilder> {
  static Serializer<ProductionLineRecord> get serializer =>
      _$productionLineRecordSerializer;

  @BuiltValueField(wireName: 'VenueName')
  String? get venueName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductionLineRecordBuilder builder) =>
      builder..venueName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductionLine');

  static Stream<ProductionLineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductionLineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductionLineRecord._();
  factory ProductionLineRecord(
          [void Function(ProductionLineRecordBuilder) updates]) =
      _$ProductionLineRecord;

  static ProductionLineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductionLineRecordData({
  String? venueName,
}) {
  final firestoreData = serializers.toFirestore(
    ProductionLineRecord.serializer,
    ProductionLineRecord(
      (p) => p..venueName = venueName,
    ),
  );

  return firestoreData;
}
