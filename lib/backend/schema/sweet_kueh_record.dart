import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sweet_kueh_record.g.dart';

abstract class SweetKuehRecord
    implements Built<SweetKuehRecord, SweetKuehRecordBuilder> {
  static Serializer<SweetKuehRecord> get serializer =>
      _$sweetKuehRecordSerializer;

  @BuiltValueField(wireName: 'KuehName')
  String? get kuehName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SweetKuehRecordBuilder builder) =>
      builder..kuehName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SweetKueh');

  static Stream<SweetKuehRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SweetKuehRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SweetKuehRecord._();
  factory SweetKuehRecord([void Function(SweetKuehRecordBuilder) updates]) =
      _$SweetKuehRecord;

  static SweetKuehRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSweetKuehRecordData({
  String? kuehName,
}) {
  final firestoreData = serializers.toFirestore(
    SweetKuehRecord.serializer,
    SweetKuehRecord(
      (s) => s..kuehName = kuehName,
    ),
  );

  return firestoreData;
}
