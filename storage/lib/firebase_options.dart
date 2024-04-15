// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAK65iwELwQK7Ry1qIHjBPZMWiC3v7ZSoU',
    appId: '1:377505654761:web:4ee31168b181fe8ad98d78',
    messagingSenderId: '377505654761',
    projectId: 'my-storage-fb-project',
    authDomain: 'my-storage-fb-project.firebaseapp.com',
    storageBucket: 'my-storage-fb-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_nX415iW1NDNXfOglOjqIrMkPmaMSQsM',
    appId: '1:377505654761:android:e9ff6f2be7508838d98d78',
    messagingSenderId: '377505654761',
    projectId: 'my-storage-fb-project',
    storageBucket: 'my-storage-fb-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAao2r1J8zLU8hPr_EkgMyqwNAhcXh2Lwo',
    appId: '1:377505654761:ios:1e4877cf35fbd7a4d98d78',
    messagingSenderId: '377505654761',
    projectId: 'my-storage-fb-project',
    storageBucket: 'my-storage-fb-project.appspot.com',
    iosBundleId: 'com.codelooms.storage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAao2r1J8zLU8hPr_EkgMyqwNAhcXh2Lwo',
    appId: '1:377505654761:ios:1e4877cf35fbd7a4d98d78',
    messagingSenderId: '377505654761',
    projectId: 'my-storage-fb-project',
    storageBucket: 'my-storage-fb-project.appspot.com',
    iosBundleId: 'com.codelooms.storage',
  );
}
