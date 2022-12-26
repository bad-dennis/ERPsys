import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCki19nVUi2jWtCpRnRZBSI0DxakAVUVNQ",
            authDomain: "erpsys-de2ac.firebaseapp.com",
            projectId: "erpsys-de2ac",
            storageBucket: "erpsys-de2ac.appspot.com",
            messagingSenderId: "349420874092",
            appId: "1:349420874092:web:d668b86a2eeab6a81ceb49",
            measurementId: "G-Y1H4PGT26F"));
  } else {
    await Firebase.initializeApp();
  }
}
