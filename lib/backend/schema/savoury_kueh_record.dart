import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'savoury_kueh_record.g.dart';

abstract class SavouryKuehRecord
    implements Built<SavouryKuehRecord, SavouryKuehRecordBuilder> {
  static Serializer<SavouryKuehRecord> get serializer =>
      _$savouryKuehRecordSerializer;

  @BuiltValueField(wireName: 'KuehName')
  String? get kuehName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SavouryKuehRecordBuilder builder) =>
      builder..kuehName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SavouryKueh');

  static Stream<SavouryKuehRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SavouryKuehRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SavouryKuehRecord._();
  factory SavouryKuehRecord([void Function(SavouryKuehRecordBuilder) updates]) =
      _$SavouryKuehRecord;

  static SavouryKuehRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSavouryKuehRecordData({
  String? kuehName,
}) {
  final firestoreData = serializers.toFirestore(
    SavouryKuehRecord.serializer,
    SavouryKuehRecord(
      (s) => s..kuehName = kuehName,
    ),
  );

  return firestoreData;
}
