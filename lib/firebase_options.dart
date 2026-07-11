import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'this app currently only targets Android.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0Um__74PpKFr1fkb0gI1iSlQSOEc2bkA',
    appId: '1:153039460333:android:8175ed29a6c7cae175b9e4',
    messagingSenderId: '153039460333',
    projectId: 'shikhaya-7e218',
    storageBucket: 'shikhaya-7e218.firebasestorage.app',
  );
}
