import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) throw UnsupportedError('Web not configured');
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError('iOS not configured');
      default:
        throw UnsupportedError('Platform not supported');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBx-mk8C0Ru4WIPf6VI0sJMu_a70scfKTI', // Found in google-services.json -> current_key
    appId: '1:450152570522:android:bf831e97b0e27e91ea0923',   // Found in google-services.json -> mobilesdk_app_id
    messagingSenderId: '450152570522', // Found in google-services.json -> project_number
    projectId: 'sirohi-app',       // Found in google-services.json -> project_id
    storageBucket: 'sirohi-app.firebasestorage.app',
  );
}