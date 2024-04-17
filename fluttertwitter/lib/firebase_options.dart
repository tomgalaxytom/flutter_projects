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
    apiKey: 'AIzaSyDpH5J0ctdEwtIRhWYJKDgG3Tk4cOarH_w',
    appId: '1:834076923749:web:e2a4e21fe8619ef321f38c',
    messagingSenderId: '834076923749',
    projectId: 'my-fwitter-project',
    authDomain: 'my-fwitter-project.firebaseapp.com',
    storageBucket: 'my-fwitter-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGciYtJVKYuQilwVVbm6a0Eny-u8nyblo',
    appId: '1:834076923749:android:94779b5c5ef3ee6421f38c',
    messagingSenderId: '834076923749',
    projectId: 'my-fwitter-project',
    storageBucket: 'my-fwitter-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9tSxTf6eURZPMw6heBciNPrz2_HhyMl0',
    appId: '1:834076923749:ios:fd168df530dd988a21f38c',
    messagingSenderId: '834076923749',
    projectId: 'my-fwitter-project',
    storageBucket: 'my-fwitter-project.appspot.com',
    iosBundleId: 'com.codelooms.fluttertwitter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9tSxTf6eURZPMw6heBciNPrz2_HhyMl0',
    appId: '1:834076923749:ios:fd168df530dd988a21f38c',
    messagingSenderId: '834076923749',
    projectId: 'my-fwitter-project',
    storageBucket: 'my-fwitter-project.appspot.com',
    iosBundleId: 'com.codelooms.fluttertwitter',
  );
}
