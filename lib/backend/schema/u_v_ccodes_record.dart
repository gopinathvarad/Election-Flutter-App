import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UVCcodesRecord extends FirestoreRecord {
  UVCcodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "validUVC" field.
  String? _validUVC;
  String get validUVC => _validUVC ?? '';
  bool hasValidUVC() => _validUVC != null;

  void _initializeFields() {
    _validUVC = snapshotData['validUVC'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UVCcodes');

  static Stream<UVCcodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UVCcodesRecord.fromSnapshot(s));

  static Future<UVCcodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UVCcodesRecord.fromSnapshot(s));

  static UVCcodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UVCcodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UVCcodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UVCcodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UVCcodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UVCcodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUVCcodesRecordData({
  String? validUVC,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'validUVC': validUVC,
    }.withoutNulls,
  );

  return firestoreData;
}

class UVCcodesRecordDocumentEquality implements Equality<UVCcodesRecord> {
  const UVCcodesRecordDocumentEquality();

  @override
  bool equals(UVCcodesRecord? e1, UVCcodesRecord? e2) {
    return e1?.validUVC == e2?.validUVC;
  }

  @override
  int hash(UVCcodesRecord? e) => const ListEquality().hash([e?.validUVC]);

  @override
  bool isValidKey(Object? o) => o is UVCcodesRecord;
}
