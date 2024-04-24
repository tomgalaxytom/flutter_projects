import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget ExampleWidget({String? name}) {
    return Text(name!);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ExampleWidget(name: 'Box 1'),
            ExampleWidget(name: 'Box 2'),
            ExampleWidget(name: 'Box 3'),
          ],
        ),
      ),
    );
  }
}
