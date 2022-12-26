import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'delivery_record.g.dart';

abstract class DeliveryRecord
    implements Built<DeliveryRecord, DeliveryRecordBuilder> {
  static Serializer<DeliveryRecord> get serializer =>
      _$deliveryRecordSerializer;

  @BuiltValueField(wireName: 'DeliveryShift')
  BuiltList<String>? get deliveryShift;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DeliveryRecordBuilder builder) =>
      builder..deliveryShift = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Delivery');

  static Stream<DeliveryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DeliveryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DeliveryRecord._();
  factory DeliveryRecord([void Function(DeliveryRecordBuilder) updates]) =
      _$DeliveryRecord;

  static DeliveryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDeliveryRecordData() {
  final firestoreData = serializers.toFirestore(
    DeliveryRecord.serializer,
    DeliveryRecord(
      (d) => d..deliveryShift = null,
    ),
  );

  return firestoreData;
}
