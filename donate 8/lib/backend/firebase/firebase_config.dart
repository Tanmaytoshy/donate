import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC7GCfrh2Z6v0G__bZhcjo0V_2i7vDmOAM",
            authDomain: "donate-a511b.firebaseapp.com",
            projectId: "donate-a511b",
            storageBucket: "donate-a511b.appspot.com",
            messagingSenderId: "553302304808",
            appId: "1:553302304808:web:91e08e764307b945aaad1d",
            measurementId: "G-4SB2HV7GT0"));
  } else {
    await Firebase.initializeApp();
  }
}
