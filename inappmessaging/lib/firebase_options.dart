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
    apiKey: 'AIzaSyCYiHRFWvTp7Mvd_nXpyW1X4d9RcaSNDls',
    appId: '1:1089258208524:web:23c99eb1e527deb72f9d29',
    messagingSenderId: '1089258208524',
    projectId: 'my-inapp-pro',
    authDomain: 'my-inapp-pro.firebaseapp.com',
    storageBucket: 'my-inapp-pro.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnYX95Zm1_tepqAo2URdZV3x7HtypGYyM',
    appId: '1:1089258208524:android:8d8f0157dcf9f9f22f9d29',
    messagingSenderId: '1089258208524',
    projectId: 'my-inapp-pro',
    storageBucket: 'my-inapp-pro.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBX_en_vCsHFH_BvSccZZJ5tsv7EWbqYes',
    appId: '1:1089258208524:ios:d6db6e99d41ef6cd2f9d29',
    messagingSenderId: '1089258208524',
    projectId: 'my-inapp-pro',
    storageBucket: 'my-inapp-pro.appspot.com',
    iosBundleId: 'com.codelooms.inappmessaging',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBX_en_vCsHFH_BvSccZZJ5tsv7EWbqYes',
    appId: '1:1089258208524:ios:d6db6e99d41ef6cd2f9d29',
    messagingSenderId: '1089258208524',
    projectId: 'my-inapp-pro',
    storageBucket: 'my-inapp-pro.appspot.com',
    iosBundleId: 'com.codelooms.inappmessaging',
  );
}
