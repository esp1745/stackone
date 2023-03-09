import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyADfaZ-yXoPtysjC-QjvylBXcmU4XFMXPY",
            authDomain: "stack-13b09.firebaseapp.com",
            projectId: "stack-13b09",
            storageBucket: "stack-13b09.appspot.com",
            messagingSenderId: "726744251455",
            appId: "1:726744251455:web:b96991871a7b2b4991cc8a",
            measurementId: "G-520KL86V6Z"));
  } else {
    await Firebase.initializeApp();
  }
}
