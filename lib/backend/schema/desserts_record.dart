import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'desserts_record.g.dart';

abstract class DessertsRecord
    implements Built<DessertsRecord, DessertsRecordBuilder> {
  static Serializer<DessertsRecord> get serializer =>
      _$dessertsRecordSerializer;

  @BuiltValueField(wireName: 'DessertsName')
  String? get dessertsName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DessertsRecordBuilder builder) =>
      builder..dessertsName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Desserts');

  static Stream<DessertsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DessertsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DessertsRecord._();
  factory DessertsRecord([void Function(DessertsRecordBuilder) updates]) =
      _$DessertsRecord;

  static DessertsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDessertsRecordData({
  String? dessertsName,
}) {
  final firestoreData = serializers.toFirestore(
    DessertsRecord.serializer,
    DessertsRecord(
      (d) => d..dessertsName = dessertsName,
    ),
  );

  return firestoreData;
}
