// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCollectionAsCSV(List<VotingDataRecord>? docs) async {
  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "Voter Name";
  String companyAddress = "Constituency and Party Voted";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header + "VoterName, Constituency, PartyList";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.voterName.toString() +
      "," +
      record.constituency.toString() +
      "," +
      record.partyList.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "FF" + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
