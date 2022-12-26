import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'department_record.g.dart';

abstract class DepartmentRecord
    implements Built<DepartmentRecord, DepartmentRecordBuilder> {
  static Serializer<DepartmentRecord> get serializer =>
      _$departmentRecordSerializer;

  @BuiltValueField(wireName: 'DepartmentName')
  String? get departmentName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DepartmentRecordBuilder builder) =>
      builder..departmentName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('department');

  static Stream<DepartmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DepartmentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DepartmentRecord._();
  factory DepartmentRecord([void Function(DepartmentRecordBuilder) updates]) =
      _$DepartmentRecord;

  static DepartmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDepartmentRecordData({
  String? departmentName,
}) {
  final firestoreData = serializers.toFirestore(
    DepartmentRecord.serializer,
    DepartmentRecord(
      (d) => d..departmentName = departmentName,
    ),
  );

  return firestoreData;
}
