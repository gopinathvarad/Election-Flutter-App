import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Constituency" field.
  String? _constituency;
  String get constituency => _constituency ?? '';
  bool hasConstituency() => _constituency != null;

  // "UVC" field.
  String? _uvc;
  String get uvc => _uvc ?? '';
  bool hasUvc() => _uvc != null;

  // "DOB" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  void _initializeFields() {
    _fullName = snapshotData['FullName'] as String?;
    _email = snapshotData['Email'] as String?;
    _password = snapshotData['Password'] as String?;
    _constituency = snapshotData['Constituency'] as String?;
    _uvc = snapshotData['UVC'] as String?;
    _dob = snapshotData['DOB'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? fullName,
  String? email,
  String? password,
  String? constituency,
  String? uvc,
  String? dob,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FullName': fullName,
      'Email': email,
      'Password': password,
      'Constituency': constituency,
      'UVC': uvc,
      'DOB': dob,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.fullName == e2?.fullName &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.constituency == e2?.constituency &&
        e1?.uvc == e2?.uvc &&
        e1?.dob == e2?.dob;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash(
      [e?.fullName, e?.email, e?.password, e?.constituency, e?.uvc, e?.dob]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
