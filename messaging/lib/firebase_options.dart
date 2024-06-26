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
    apiKey: 'AIzaSyApXjS6wx011L7U0tP8I3o70X9tjcyf-zs',
    appId: '1:731190171203:web:4407091b610725a3a8e6f6',
    messagingSenderId: '731190171203',
    projectId: 'my-fb-msg-project',
    authDomain: 'my-fb-msg-project.firebaseapp.com',
    storageBucket: 'my-fb-msg-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCps-_pkXIV3XZ1dnRQ-rZ6JqemMDjrwqY',
    appId: '1:731190171203:android:83a2d40e9b712520a8e6f6',
    messagingSenderId: '731190171203',
    projectId: 'my-fb-msg-project',
    storageBucket: 'my-fb-msg-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7R6waS5AVkbxfl6tVMq-6HSIEfhcXots',
    appId: '1:731190171203:ios:eed19f085cc8083fa8e6f6',
    messagingSenderId: '731190171203',
    projectId: 'my-fb-msg-project',
    storageBucket: 'my-fb-msg-project.appspot.com',
    iosBundleId: 'com.codelooms.messaging',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7R6waS5AVkbxfl6tVMq-6HSIEfhcXots',
    appId: '1:731190171203:ios:eed19f085cc8083fa8e6f6',
    messagingSenderId: '731190171203',
    projectId: 'my-fb-msg-project',
    storageBucket: 'my-fb-msg-project.appspot.com',
    iosBundleId: 'com.codelooms.messaging',
  );
}
