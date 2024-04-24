import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget ExampleWidget({String? name}) {
    return Card(child: Text(name!));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ExampleWidget(name: 'Dynamic Box ${index + 1}');
          },
        ),
      ),
    );
  }
}
