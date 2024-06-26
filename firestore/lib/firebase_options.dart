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
    apiKey: 'AIzaSyBYblthwD8nlSbXZMPWpby5wekGIWob9Ts',
    appId: '1:847933056197:web:ecf18d51ac07049da23cac',
    messagingSenderId: '847933056197',
    projectId: 'my-fstore-project',
    authDomain: 'my-fstore-project.firebaseapp.com',
    storageBucket: 'my-fstore-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVp0O_wKLe1_AFrr5vHgIYKlQjj7B16G0',
    appId: '1:847933056197:android:ad0a5e23ed279edea23cac',
    messagingSenderId: '847933056197',
    projectId: 'my-fstore-project',
    storageBucket: 'my-fstore-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXgs6Ld9X8YEmzTQUljBntp1JJL6VFexM',
    appId: '1:847933056197:ios:7ef4990e708cd093a23cac',
    messagingSenderId: '847933056197',
    projectId: 'my-fstore-project',
    storageBucket: 'my-fstore-project.appspot.com',
    iosBundleId: 'com.codelooms.firestore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXgs6Ld9X8YEmzTQUljBntp1JJL6VFexM',
    appId: '1:847933056197:ios:7ef4990e708cd093a23cac',
    messagingSenderId: '847933056197',
    projectId: 'my-fstore-project',
    storageBucket: 'my-fstore-project.appspot.com',
    iosBundleId: 'com.codelooms.firestore',
  );
}
