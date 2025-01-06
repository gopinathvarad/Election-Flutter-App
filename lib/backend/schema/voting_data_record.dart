import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotingDataRecord extends FirestoreRecord {
  VotingDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Constituency" field.
  String? _constituency;
  String get constituency => _constituency ?? '';
  bool hasConstituency() => _constituency != null;

  // "PartyList" field.
  String? _partyList;
  String get partyList => _partyList ?? '';
  bool hasPartyList() => _partyList != null;

  // "Voting_User" field.
  DocumentReference? _votingUser;
  DocumentReference? get votingUser => _votingUser;
  bool hasVotingUser() => _votingUser != null;

  // "VoterName" field.
  String? _voterName;
  String get voterName => _voterName ?? '';
  bool hasVoterName() => _voterName != null;

  void _initializeFields() {
    _constituency = snapshotData['Constituency'] as String?;
    _partyList = snapshotData['PartyList'] as String?;
    _votingUser = snapshotData['Voting_User'] as DocumentReference?;
    _voterName = snapshotData['VoterName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VotingData');

  static Stream<VotingDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VotingDataRecord.fromSnapshot(s));

  static Future<VotingDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VotingDataRecord.fromSnapshot(s));

  static VotingDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VotingDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VotingDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VotingDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VotingDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VotingDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVotingDataRecordData({
  String? constituency,
  String? partyList,
  DocumentReference? votingUser,
  String? voterName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Constituency': constituency,
      'PartyList': partyList,
      'Voting_User': votingUser,
      'VoterName': voterName,
    }.withoutNulls,
  );

  return firestoreData;
}

class VotingDataRecordDocumentEquality implements Equality<VotingDataRecord> {
  const VotingDataRecordDocumentEquality();

  @override
  bool equals(VotingDataRecord? e1, VotingDataRecord? e2) {
    return e1?.constituency == e2?.constituency &&
        e1?.partyList == e2?.partyList &&
        e1?.votingUser == e2?.votingUser &&
        e1?.voterName == e2?.voterName;
  }

  @override
  int hash(VotingDataRecord? e) => const ListEquality()
      .hash([e?.constituency, e?.partyList, e?.votingUser, e?.voterName]);

  @override
  bool isValidKey(Object? o) => o is VotingDataRecord;
}
