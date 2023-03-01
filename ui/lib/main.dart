import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

import 'screen/create_account.dart';
import 'screen/login.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const CreateAccountPage(title: 'Flutter Demo Home Page'),
    );
  }
}

