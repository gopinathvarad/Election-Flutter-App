import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAfeMpOrm6c3b71cHZlCulnlPIQmFSKG3g",
            authDomain: "election-app-kqqlvc.firebaseapp.com",
            projectId: "election-app-kqqlvc",
            storageBucket: "election-app-kqqlvc.appspot.com",
            messagingSenderId: "822298415733",
            appId: "1:822298415733:web:385731ec6f1ce378f59e3c"));
  } else {
    await Firebase.initializeApp();
  }
}
