import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:storage/app.dart';
import 'package:storage/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // final cameras = await availableCameras();
  // final camera = cameras.first;

  // runApp(App(camera: camera));
  runApp(const App());
}